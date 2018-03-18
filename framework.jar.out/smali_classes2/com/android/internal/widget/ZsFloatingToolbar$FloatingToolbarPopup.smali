.class final Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;
.super Ljava/lang/Object;
.source "ZsFloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ZsFloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarPopup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$1;,
        Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$2;,
        Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$3;,
        Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;
    }
.end annotation


# static fields
.field private static final TRIANGLE_POSITION_BOTTOM:I = 0x2

.field private static final TRIANGLE_POSITION_TOP:I = 0x1


# instance fields
.field private final mContentContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private final mDismissAnimation:Landroid/animation/AnimatorSet;

.field private mDismissed:Z

.field private final mHScrollView:Landroid/widget/HorizontalScrollView;

.field private mHidden:Z

.field private final mHideAnimation:Landroid/animation/AnimatorSet;

.field private final mImage2LMeasuredWidth:I

.field private final mImage2RMeasuredWidth:I

.field private final mImageArrow2B:Landroid/widget/ImageView;

.field private final mImageArrow2L:Landroid/widget/ImageButton;

.field private final mImageArrow2LContainer:Landroid/view/ViewGroup;

.field private final mImageArrow2R:Landroid/widget/ImageButton;

.field private final mImageArrow2T:Landroid/widget/ImageView;

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mItemButtonContainer:Landroid/view/ViewGroup;

.field private final mMainPanelContainer:Landroid/view/ViewGroup;

.field private mMainPanelSize:Landroid/util/Size;

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mParent:Landroid/view/View;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private final mShowAnimation:Landroid/animation/AnimatorSet;

.field private final mTmpCoords:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private final mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

.field private final mViewPortOnScreen:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Region;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;I)V
    .locals 0
    .param p1, "posX"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->horizontalArrowAction(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->scrollAction(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 314
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    .line 316
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    .line 317
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTmpRect:Landroid/graphics/Rect;

    .line 321
    new-instance v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$1;-><init>(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 332
    iput-boolean v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 340
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    .line 342
    new-instance v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$2;-><init>(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 621
    new-instance v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$3;-><init>(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 358
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    .line 359
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 361
    new-instance v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    .line 363
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const v1, 0x102115e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2T:Landroid/widget/ImageView;

    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const v1, 0x1021165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2B:Landroid/widget/ImageView;

    .line 371
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const v1, 0x102115f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelContainer:Landroid/view/ViewGroup;

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$4;-><init>(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelContainer:Landroid/view/ViewGroup;

    const v1, 0x1021163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2L:Landroid/widget/ImageButton;

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2L:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2L:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2L:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImage2LMeasuredWidth:I

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelContainer:Landroid/view/ViewGroup;

    const v1, 0x1021162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2LContainer:Landroid/view/ViewGroup;

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelContainer:Landroid/view/ViewGroup;

    const v1, 0x1021164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    .line 390
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImage2RMeasuredWidth:I

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelContainer:Landroid/view/ViewGroup;

    const v1, 0x1021160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    .line 396
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setSmoothScrollingEnabled(Z)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$5;-><init>(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelContainer:Landroid/view/ViewGroup;

    const v1, 0x1021161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mItemButtonContainer:Landroid/view/ViewGroup;

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 413
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 415
    new-instance v1, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$6;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$6;-><init>(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)V

    .line 414
    const/16 v2, 0x96

    .line 412
    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    .line 423
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 425
    new-instance v1, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$7;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$7;-><init>(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)V

    .line 422
    invoke-static {v0, v3, v1}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 357
    return-void
.end method

.method private cancelDismissAndHideAnimations()V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 702
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 700
    return-void
.end method

.method private clearPanels()V
    .locals 2

    .prologue
    .line 674
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZsFloatingToolbar"

    const-string/jumbo v1, "***** FloatingToolbarPopup.clearPanels *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 673
    return-void
.end method

.method private static createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    .line 998
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090123

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 999
    .local v0, "contentContainer":Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    const-string/jumbo v1, "zs_floating_toolbar"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1001
    return-object v0
.end method

.method private static createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 866
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 867
    .local v0, "animation":Landroid/animation/AnimatorSet;
    new-array v1, v5, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 868
    return-object v0
.end method

.method private static createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startDelay"    # I
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 880
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 881
    .local v0, "animation":Landroid/animation/AnimatorSet;
    new-array v1, v5, [Landroid/animation/Animator;

    .line 882
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v6

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 881
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 883
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 884
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 885
    return-object v0
.end method

.method private static createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 846
    invoke-static {p1}, Lcom/android/internal/widget/ZsFloatingToolbar;->-wrap0(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 847
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 848
    const v3, 0x1090125

    .line 847
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 849
    .local v0, "imageMenuItemButton":Landroid/view/View;
    const v2, 0x1021166

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 850
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 849
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 851
    return-object v0

    .line 854
    .end local v0    # "imageMenuItemButton":Landroid/view/View;
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090124

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 855
    .local v1, "menuItemButton":Landroid/widget/Button;
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 857
    return-object v1
.end method

.method private static createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;
    .locals 3
    .param p0, "content"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 1005
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 1008
    .local v0, "popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1009
    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1010
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1011
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1012
    return-object v0
.end method

.method private disableHorizontalArrow(ZZ)V
    .locals 3
    .param p1, "showLeft"    # Z
    .param p2, "showRight"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 913
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2L:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 914
    if-eqz p1, :cond_2

    .line 915
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2L:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 921
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 922
    if-eqz p2, :cond_3

    .line 923
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 912
    :cond_1
    :goto_1
    return-void

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2L:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 925
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private getAdjustedToolbarWidth(I)I
    .locals 5
    .param p1, "suggestedWidth"    # I

    .prologue
    .line 889
    move v1, p1

    .line 890
    .local v1, "width":I
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    .line 895
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 896
    const v4, 0x10500b6

    .line 895
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 897
    .local v0, "maximumWidth":I
    if-gtz p1, :cond_0

    .line 898
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 900
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private horizontalArrowAction(I)V
    .locals 7
    .param p1, "posX"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 931
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v2, :cond_0

    .line 932
    return-void

    .line 934
    :cond_0
    if-gtz p1, :cond_3

    .line 935
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2LContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2LContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 936
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2LContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 944
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 945
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 946
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 947
    iget-object v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 946
    sub-int/2addr v3, v4

    .line 948
    iget-object v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 946
    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 950
    .local v1, "iRange":I
    if-ge p1, v1, :cond_4

    .line 951
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 952
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 930
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "iRange":I
    :cond_2
    :goto_1
    return-void

    .line 939
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2LContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2LContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 940
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2LContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 955
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "iRange":I
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 956
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private landscapeArrowVisible(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "padding"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 970
    packed-switch p1, :pswitch_data_0

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 972
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2T:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2T:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 974
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2T:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2B:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2B:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 983
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2T:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 984
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2T:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 987
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2B:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2B:Landroid/widget/ImageView;

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 970
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private noHorizontalArrow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 909
    invoke-direct {p0, v0, v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->disableHorizontalArrow(ZZ)V

    .line 908
    return-void
.end method

.method private preparePopupContent()V
    .locals 0

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    .line 903
    return-void
.end method

.method private refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .locals 31
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 715
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 716
    const-string/jumbo v25, "ZsFloatingToolbar"

    const-string/jumbo v26, "refreshCoordinatesAndOverflowDirection"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string/jumbo v25, "ZsFloatingToolbar"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "contentRectOnScreen:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-string/jumbo v25, "ZsFloatingToolbar"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "contentRectOnScreen.centerX():"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    sub-int v25, v25, v26

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenBetweenMargin2LOrR:I

    move/from16 v28, v0

    add-int v27, v27, v28

    sub-int v26, v26, v27

    .line 730
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 735
    .local v21, "x":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v3, v25, v26

    .line 736
    .local v3, "availableHeightAboveContent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v4, v25, v26

    .line 738
    .local v4, "availableHeightBelowContent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenBetween:I

    .line 739
    .local v15, "toolbarBetweenContent":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenContentHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenConvexHeight:I

    move/from16 v26, v0

    add-int v16, v25, v26

    .line 740
    .local v16, "toolbarHeightContent":I
    add-int v17, v16, v15

    .line 741
    .local v17, "toolbarHeightWithBetweenContent":I
    move/from16 v0, v17

    if-lt v3, v0, :cond_5

    .line 743
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v23, v25, v17

    .line 744
    .local v23, "y":I
    const/16 v18, 0x2

    .line 761
    .local v18, "trianglePos":I
    :goto_0
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 762
    const-string/jumbo v25, "ZsFloatingToolbar"

    sget-object v26, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v27, "{x:y}={%d:%d}"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x1

    aput-object v29, v28, v30

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string/jumbo v25, "ZsFloatingToolbar"

    sget-object v26, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v27, "mPopupWindow->{w:h}={%d:%d}"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x1

    aput-object v29, v28, v30

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v10, v25, v26

    .line 775
    .local v10, "rootViewLeftOnScreen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v12, v25, v26

    .line 777
    .local v12, "rootViewTopOnScreen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->getLocationInWindow([I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v11, v25, v26

    .line 779
    .local v11, "rootViewLeftOnWindow":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v13, v25, v26

    .line 781
    .local v13, "rootViewTopOnWindow":I
    sub-int v19, v10, v11

    .line 782
    .local v19, "windowLeftOnScreen":I
    sub-int v20, v12, v13

    .line 784
    .local v20, "windowTopOnScreen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenBetweenMargin2LOrR:I

    move/from16 v25, v0

    sub-int v26, v21, v19

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 785
    .local v22, "xPos":I
    sub-int v25, v23, v20

    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 787
    .local v24, "yPos":I
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 788
    const-string/jumbo v25, "ZsFloatingToolbar"

    const-string/jumbo v26, "windowOnScreen:{L:R}={%d:%d}"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x1

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const-string/jumbo v25, "ZsFloatingToolbar"

    const-string/jumbo v26, "Last position:{XP:YP}={%d:%d}"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x1

    aput-object v28, v27, v29

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v25

    add-int v9, v22, v25

    .line 797
    .local v9, "posXEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenConvexWidth:I

    move/from16 v25, v0

    div-int/lit8 v5, v25, 0x2

    .line 798
    .local v5, "halfTriangleWidth":I
    const/4 v14, 0x0

    .line 800
    .local v14, "toPadding":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    sub-int v25, v25, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenOutlineRadiusWidth:I

    move/from16 v26, v0

    add-int v26, v26, v22

    sub-int v7, v25, v26

    .line 801
    .local v7, "iPos":I
    if-ltz v7, :cond_8

    .line 802
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v25

    if-eqz v25, :cond_3

    const-string/jumbo v25, "ZsFloatingToolbar"

    const-string/jumbo v26, "LR arrow position normal"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenOutlineRadiusWidth:I

    move/from16 v25, v0

    sub-int v25, v9, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenConvexWidth:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 822
    :goto_1
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v25

    if-eqz v25, :cond_4

    const-string/jumbo v25, "ZsFloatingToolbar"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "To padding value: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v14}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->landscapeArrowVisible(II)V

    .line 713
    return-void

    .line 745
    .end local v5    # "halfTriangleWidth":I
    .end local v7    # "iPos":I
    .end local v9    # "posXEnd":I
    .end local v10    # "rootViewLeftOnScreen":I
    .end local v11    # "rootViewLeftOnWindow":I
    .end local v12    # "rootViewTopOnScreen":I
    .end local v13    # "rootViewTopOnWindow":I
    .end local v14    # "toPadding":I
    .end local v18    # "trianglePos":I
    .end local v19    # "windowLeftOnScreen":I
    .end local v20    # "windowTopOnScreen":I
    .end local v22    # "xPos":I
    .end local v23    # "y":I
    .end local v24    # "yPos":I
    :cond_5
    move/from16 v0, v17

    if-lt v4, v0, :cond_6

    .line 747
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    .line 748
    .restart local v23    # "y":I
    const/16 v18, 0x1

    .restart local v18    # "trianglePos":I
    goto/16 :goto_0

    .line 749
    .end local v18    # "trianglePos":I
    .end local v23    # "y":I
    :cond_6
    move/from16 v0, v16

    if-lt v4, v0, :cond_7

    .line 751
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v23, v25, v15

    .line 752
    .restart local v23    # "y":I
    const/16 v18, 0x1

    .restart local v18    # "trianglePos":I
    goto/16 :goto_0

    .line 756
    .end local v18    # "trianglePos":I
    .end local v23    # "y":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    .line 757
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v26, v26, v17

    .line 755
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 758
    .restart local v23    # "y":I
    const/16 v18, 0x2

    .restart local v18    # "trianglePos":I
    goto/16 :goto_0

    .line 805
    .restart local v5    # "halfTriangleWidth":I
    .restart local v7    # "iPos":I
    .restart local v9    # "posXEnd":I
    .restart local v10    # "rootViewLeftOnScreen":I
    .restart local v11    # "rootViewLeftOnWindow":I
    .restart local v12    # "rootViewTopOnScreen":I
    .restart local v13    # "rootViewTopOnWindow":I
    .restart local v14    # "toPadding":I
    .restart local v19    # "windowLeftOnScreen":I
    .restart local v20    # "windowTopOnScreen":I
    .restart local v22    # "xPos":I
    .restart local v24    # "yPos":I
    :cond_8
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v25

    if-eqz v25, :cond_9

    const-string/jumbo v25, "ZsFloatingToolbar"

    const-string/jumbo v26, "LR arrow position not normal"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-gt v9, v0, :cond_e

    .line 807
    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v25, v22, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 808
    .local v6, "iLeft":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v25, v9, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 809
    .local v8, "iRight":I
    if-gt v6, v8, :cond_c

    .line 810
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v25

    if-eqz v25, :cond_b

    const-string/jumbo v25, "ZsFloatingToolbar"

    const-string/jumbo v26, "arrow position at left"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenOutlineRadiusWidth:I

    goto/16 :goto_1

    .line 813
    :cond_c
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v25

    if-eqz v25, :cond_d

    const-string/jumbo v25, "ZsFloatingToolbar"

    const-string/jumbo v26, "arrow position at right"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenOutlineRadiusWidth:I

    move/from16 v25, v0

    sub-int v25, v9, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenConvexWidth:I

    move/from16 v26, v0

    sub-int v14, v25, v26

    goto/16 :goto_1

    .line 817
    .end local v6    # "iLeft":I
    .end local v8    # "iRight":I
    :cond_e
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v25

    if-eqz v25, :cond_f

    const-string/jumbo v25, "ZsFloatingToolbar"

    const-string/jumbo v26, "arrow position at center"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v14, v25, v5

    goto/16 :goto_1
.end method

.method private refreshViewPort()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 964
    return-void
.end method

.method private runDismissAnimation()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 689
    return-void
.end method

.method private runHideAnimation()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 696
    return-void
.end method

.method private runShowAnimation()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 682
    return-void
.end method

.method private scrollAction(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 630
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2L:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2L:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImageArrow2R:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    .line 628
    :cond_1
    return-void
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 643
    move-object v0, p1

    .line 644
    .local v0, "button":Landroid/view/View;
    invoke-static {p2}, Lcom/android/internal/widget/ZsFloatingToolbar;->-wrap0(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    const v1, 0x1021166

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 647
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 648
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    return-void
.end method

.method private setContentAreaAsTouchableSurface()V
    .locals 7

    .prologue
    .line 830
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 832
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 834
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    .line 835
    iget-object v3, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 836
    iget-object v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 837
    iget-object v5, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v1

    .line 838
    iget-object v6, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v0

    .line 834
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 829
    return-void
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .locals 2

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 669
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 670
    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 667
    return-void
.end method

.method private setZeroTouchableSurface()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 709
    return-void
.end method

.method private updatePopupSize()V
    .locals 3

    .prologue
    .line 652
    const/4 v1, 0x0

    .local v1, "width":I
    const/4 v0, 0x0

    .line 653
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_0

    .line 654
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 655
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 657
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 658
    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 651
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 496
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZsFloatingToolbar"

    const-string/jumbo v1, "***** FloatingToolbarPopup.dismiss() ******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-eqz v0, :cond_1

    .line 499
    return-void

    .line 502
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    .line 503
    iput-boolean v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 504
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 506
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->runDismissAnimation()V

    .line 507
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    .line 495
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    return-void

    .line 519
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    .line 520
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->runHideAnimation()V

    .line 521
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    .line 514
    return-void
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 528
    iget-boolean v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;
    .locals 10
    .param p2, "toolbarWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v9, 0x0

    .line 568
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 569
    const-string/jumbo v6, "ZsFloatingToolbar"

    const-string/jumbo v7, "***** FloatingToolbarPopup.layoutMainPanelItems *****"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string/jumbo v6, "ZsFloatingToolbar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "layoutMainPanelItems: toolbarWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 575
    .local v5, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    iget-object v6, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mItemButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 576
    :goto_0
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 577
    invoke-virtual {v5}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 579
    .local v3, "menuItem":Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 580
    const-string/jumbo v6, "ZsFloatingToolbar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MenuItem.Title:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_1
    iget-object v6, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    .line 584
    .local v4, "menuItemButton":Landroid/view/View;
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 585
    iget-object v6, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mItemButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 586
    invoke-virtual {v5}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 591
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    .end local v4    # "menuItemButton":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mItemButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v9, v9}, Landroid/view/View;->measure(II)V

    .line 592
    iget-object v6, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mItemButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 594
    .local v2, "itemsWidth":I
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 595
    const-string/jumbo v6, "ZsFloatingToolbar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "All items width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_3
    iget-object v6, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    iget v6, v6, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenContentHeight:I

    iget-object v7, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mUtility:Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;

    iget v7, v7, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$FloatingToolbarUtility;->dimenConvexHeight:I

    add-int v1, v6, v7

    .line 600
    .local v1, "iHeight":I
    if-lt p2, v2, :cond_4

    .line 601
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v2, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v6, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 604
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->noHorizontalArrow()V

    .line 618
    :goto_1
    return-object v5

    .line 606
    :cond_4
    move v0, p2

    .line 607
    .local v0, "availableWidth":I
    iget v6, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImage2LMeasuredWidth:I

    iget v7, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mImage2RMeasuredWidth:I

    add-int/2addr v6, v7

    if-gt p2, v6, :cond_5

    .line 608
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    .line 609
    iget-object v6, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 611
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 612
    const-string/jumbo v6, "ZsFloatingToolbar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad situation: availableWidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_5
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v0, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v6, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    goto :goto_1
.end method

.method public layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .locals 2
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .param p3, "suggestedWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZsFloatingToolbar"

    const-string/jumbo v1, "***** FloatingToolbarPopup.layoutMenuItems *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    iput-object p2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 446
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->clearPanels()V

    .line 447
    invoke-direct {p0, p3}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->getAdjustedToolbarWidth(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 448
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    .line 442
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 460
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    return-void

    .line 466
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    .line 467
    iput-boolean v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 468
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->cancelDismissAndHideAnimations()V

    .line 470
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 471
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    .line 475
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 476
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->setTouchableSurfaceInsetsComputer()V

    .line 477
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->runShowAnimation()V

    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    new-instance v1, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$8;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup$8;-><init>(Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 459
    return-void
.end method

.method public updateCoordinates(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 544
    invoke-static {}, Lcom/android/internal/widget/ZsFloatingToolbar;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZsFloatingToolbar"

    const-string/jumbo v1, "FloatingToolbarPopup.updateCoordinates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 552
    invoke-direct {p0}, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ZsFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 543
    return-void

    .line 548
    :cond_1
    return-void
.end method
