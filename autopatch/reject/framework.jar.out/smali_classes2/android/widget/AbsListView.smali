.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$FlymeInjector;,
        Landroid/widget/AbsListView$HoldView;,
        Landroid/widget/AbsListView$OnItemDragListener;,
        Landroid/widget/AbsListView$onTouchOutOfItemListener;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$OnScrollListener;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$WindowRunnnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields

.field public static final CHOICE_MODE_MULTIPLE_MODAL_MZ:I = 0x4

.field public static final CHOICE_MODE_MULTIPLE_MODAL_MZ_ALWAYS:I = 0x5

.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields

.field protected mCenterContent:Z

.field protected mCheckRegionRect:Landroid/graphics/Rect;

.field protected mChoiceModeMZ:I

.field protected mDefaultCheckWidth:I

.field protected mEnableForEditTextPreference:Z

.field protected mEnableHoldPress:Z

.field mFlymeCheckForLittleTap:Landroid/widget/AbsListView$FlymeInjector$MzCheckForLittleTap;

.field mFlymeEnableLoadAllItems:Z

.field mFlymeEnableOverScroll:Z

.field mFlymeEnablePressStateOnCheck:Z

.field mFlymeFirstInit:Z

.field mFlymeHoldPressDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mFlymeInCheckRegion:Z

.field mFlymeMultiChoiceDelayRunnable:Ljava/lang/Runnable;

.field mFlymeShowPressed:Z

.field protected mHoldView:Landroid/widget/AbsListView$HoldView;

.field mIsFlymeThemeLight:Z

.field protected mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

.field protected mListItemHeight:I

.field protected mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mEnableListAccelerate:Z

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mHasPerformedLongPress:Z

.field private mInAccelerateProcess:Z

.field private mIsChildViewEnabled:Z

.field private mIsDetaching:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field private mListAccelerateWhiteApps:[Ljava/lang/String;

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mNestedYOffset:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSelectorState:[I

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method static synthetic -get0(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic -get11(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic -get12(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic -get13(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic -get14(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic -get15(Landroid/widget/AbsListView;)[F
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object v0
.end method

.method static synthetic -get16(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic -get8(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic -get9(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic -set2(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic -set3(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/AbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/AbsListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "alwaysShow"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 724
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 816
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 246
    iput v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 279
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 304
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 309
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 319
    iput v6, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 324
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 330
    new-instance v3, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v3, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 335
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 340
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 345
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 350
    iput v2, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 355
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 360
    iput v2, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 408
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 439
    iput v2, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 482
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 502
    iput v6, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 504
    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 530
    iput v6, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 533
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 536
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 544
    iput-object v4, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 545
    iput-object v4, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 604
    iput v2, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 629
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 631
    new-array v3, v7, [Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 633
    new-array v3, v5, [I

    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 634
    new-array v3, v5, [I

    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 636
    new-array v3, v5, [F

    iput-object v3, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 642
    iput v2, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 652
    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 700
    iput v2, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 742
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mEnableListAccelerate:Z

    .line 743
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mInAccelerateProcess:Z

    .line 744
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 745
    const-string/jumbo v4, "com.tencent.mm"

    aput-object v4, v3, v2

    .line 746
    const-string/jumbo v4, "com.ss.android.article.news"

    aput-object v4, v3, v7

    .line 747
    const-string/jumbo v4, "com.sina.weibo"

    aput-object v4, v3, v5

    .line 744
    iput-object v3, p0, Landroid/widget/AbsListView;->mListAccelerateWhiteApps:[Ljava/lang/String;

    .line 818
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mEnableListAccelerate:Z

    if-eqz v3, :cond_0

    .line 819
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getEnableListAccelerate()Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mEnableListAccelerate:Z

    .line 820
    :cond_0
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mEnableListAccelerate:Z

    if-eqz v3, :cond_1

    .line 822
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 823
    iget-object v3, p0, Landroid/widget/AbsListView;->mListAccelerateWhiteApps:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 824
    .local v1, "match":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_2

    .line 825
    iput-boolean v7, p0, Landroid/widget/AbsListView;->mInAccelerateProcess:Z

    .line 831
    .end local v1    # "match":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 833
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 835
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 836
    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 837
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 838
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 815
    return-void

    .line 823
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "match":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, #android:attr@absListViewStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 846
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 845
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 850
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 246
    iput v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 279
    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 304
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 309
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 319
    iput v9, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 324
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 330
    new-instance v3, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v3, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 335
    iput v4, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 340
    iput v4, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 345
    iput v4, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 350
    iput v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 355
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 360
    iput v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 408
    iput v9, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 439
    iput v4, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 482
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 502
    iput v9, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 504
    iput-object v5, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 530
    iput v9, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 533
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 536
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 544
    iput-object v5, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 545
    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 604
    iput v4, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 629
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 631
    new-array v3, v8, [Z

    iput-object v3, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 633
    new-array v3, v10, [I

    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 634
    new-array v3, v10, [I

    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 636
    new-array v3, v10, [F

    iput-object v3, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 642
    iput v4, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 652
    iput v9, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 700
    iput v4, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 742
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mEnableListAccelerate:Z

    .line 743
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mInAccelerateProcess:Z

    .line 744
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 745
    const-string/jumbo v5, "com.tencent.mm"

    aput-object v5, v3, v4

    .line 746
    const-string/jumbo v5, "com.ss.android.article.news"

    aput-object v5, v3, v8

    .line 747
    const-string/jumbo v5, "com.sina.weibo"

    aput-object v5, v3, v10

    .line 744
    iput-object v3, p0, Landroid/widget/AbsListView;->mListAccelerateWhiteApps:[Ljava/lang/String;

    .line 852
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mEnableListAccelerate:Z

    if-eqz v3, :cond_0

    .line 853
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getEnableListAccelerate()Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mEnableListAccelerate:Z

    .line 854
    :cond_0
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mEnableListAccelerate:Z

    if-eqz v3, :cond_1

    .line 856
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 857
    iget-object v5, p0, Landroid/widget/AbsListView;->mListAccelerateWhiteApps:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v1, v5, v3

    .line 858
    .local v1, "match":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_3

    .line 859
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mInAccelerateProcess:Z

    .line 865
    .end local v1    # "match":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 867
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 870
    sget-object v3, Lcom/android/internal/R$styleable;->AbsListView:[I

    .line 869
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 872
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 873
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 874
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 877
    :cond_2
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 879
    invoke-virtual {v0, v10, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 882
    const/4 v3, 0x3

    .line 881
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 884
    const/4 v3, 0x4

    .line 883
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 886
    const/4 v3, 0x5

    .line 885
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 888
    const/4 v3, 0x6

    .line 887
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 890
    const/16 v3, 0x9

    .line 889
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 892
    const/4 v3, 0x7

    .line 891
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 895
    const/16 v3, 0x8

    .line 894
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 897
    const/16 v3, 0xb

    .line 896
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 899
    const/16 v3, 0xa

    .line 898
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 901
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 849
    return-void

    .line 857
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "match":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1980
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 1981
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1980
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1981
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1980
    goto :goto_0
.end method

.method private canScrollDown()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2305
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 2308
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v3, v4, :cond_0

    const/4 v0, 0x1

    .line 2311
    .local v0, "canScrollDown":Z
    :cond_0
    if-nez v0, :cond_1

    if-lez v2, :cond_1

    .line 2312
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2313
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_2

    const/4 v0, 0x1

    .line 2316
    .end local v0    # "canScrollDown":Z
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    :goto_0
    return v0

    .line 2313
    .restart local v0    # "canScrollDown":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    .local v0, "canScrollDown":Z
    goto :goto_0
.end method

.method private canScrollUp()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2290
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 2293
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2294
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 2295
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2296
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2

    const/4 v0, 0x1

    .line 2300
    .end local v0    # "canScrollUp":Z
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 2290
    goto :goto_0

    .line 2296
    .restart local v0    # "canScrollUp":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    .local v0, "canScrollUp":Z
    goto :goto_1
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 5043
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5044
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 5045
    new-instance v0, Landroid/widget/AbsListView$4;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5061
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5042
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1295
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1296
    .local v0, "childCount":I
    if-nez v0, :cond_0

    return v1

    .line 1297
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eq v0, v3, :cond_1

    return v2

    .line 1299
    :cond_1

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->flymeContentFits(Landroid/widget/AbsListView;)Z

    move-result v3

    return v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    .line 1300
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_2

    .line 1299
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1300
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1299
    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5035
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 5034
    :cond_0
    :goto_0
    return-void

    .line 5035
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5036
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5037
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5038
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    goto :goto_0
.end method

.method private createTextFilter(Z)V
    .locals 5
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 6067
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 6068
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, #android:style@Animation.TypingFilter#t

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, #android:style@Animation.TypingFilterRestore#t

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 5704
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 5705
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5703
    :cond_0
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2801
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2802
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2803
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2804
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2800
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 6309
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 6310
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6311
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 6308
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 5750
    sparse-switch p2, :sswitch_data_0

    .line 5783
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5752
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 5753
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5754
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 5755
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5787
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 5788
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 5789
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 5758
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5759
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 5760
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5761
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 5764
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 5765
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5766
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 5767
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5768
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5770
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5771
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 5772
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5773
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 5777
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5778
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5779
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5780
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5781
    .restart local v1    # "dY":I
    goto :goto_0

    .line 5750
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDrawableStateForSelector()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2926
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 2928
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v4

    return-object v4

    .line 2934
    :cond_0
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    aget v1, v4, v5

    .line 2940
    .local v1, "enabledState":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2942
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 2943
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2944
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 2945
    move v0, v2

    .line 2951
    :cond_1
    if-ltz v0, :cond_2

    .line 2952
    add-int/lit8 v4, v0, 0x1

    .line 2953
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    .line 2952
    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2956
    :cond_2
    return-object v3

    .line 2943
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6088
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 6089
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, #android:layout@typing_filter#t

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6095
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 6097
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6098
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6100
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 906
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 907
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 908
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 909
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 910
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 912
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 913
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 914
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 915
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 916
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 917
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 919
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->initFlymeExtraFields(Landroid/widget/AbsListView;)V

    .line 904
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 4409
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4410
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4408
    :goto_0
    return-void

    .line 4412
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 4417
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 4418
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4416
    :cond_0
    return-void
.end method

.method private invalidateBottomGlow()V
    .locals 6

    .prologue
    .line 3769
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 3770
    return-void

    .line 3772
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    .line 3773
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 3774
    .local v0, "bottom":I
    :goto_0
    if-eqz v1, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 3775
    .local v2, "left":I
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 3776
    .local v3, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 3768
    return-void

    .line 3773
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .restart local v0    # "bottom":I
    goto :goto_0

    .line 3774
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "left":I
    goto :goto_1

    .line 3775
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    .restart local v3    # "right":I
    goto :goto_2
.end method

.method private invalidateTopGlow()V
    .locals 6

    .prologue
    .line 3758
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 3759
    return-void

    .line 3761
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .line 3762
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_1

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 3763
    .local v3, "top":I
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 3764
    .local v1, "left":I
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v2, v4, v5

    .line 3765
    .local v2, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 3757
    return-void

    .line 3762
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "top":I
    goto :goto_0

    .line 3763
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "left":I
    goto :goto_1

    .line 3764
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    .restart local v2    # "right":I
    goto :goto_2
.end method

.method private isItemClickable(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2602
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1409
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 4541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 4543
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4544
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 4548
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 4549
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4550
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4551
    iput v3, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4552
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4540
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 4548
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 4219
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 4232
    iput v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4233
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4234
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4235
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4236
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 4238
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4239
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4240
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4243
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 4244
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4245
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4247
    :cond_1
    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4218
    return-void

    .line 4221
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 4222
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4224
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 4219
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3920
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 3921
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3923
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 3925
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3926
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v4, :cond_0

    .line 3927
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3929
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3931
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3932
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 3933
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3934
    iput v6, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 3977
    :goto_0

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnTouchDown(Landroid/widget/AbsListView;)V

    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 3978
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 3977
    if-eqz v4, :cond_1

    .line 3979
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3919
    :cond_1
    return-void

    .line 3936
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 3937
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 3938
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3940
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 3941
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 3943
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3944
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3945
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3946
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    .line 3947
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 3965
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 3967
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3968
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3971
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3972
    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3973
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3974
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_0

    .line 3948
    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3952
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3955
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v4, :cond_6

    .line 3956
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    invoke-direct {v4, p0, v7}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 3959
    :cond_6
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 3960
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 3961
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3984
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    if-eqz v5, :cond_0

    .line 3986
    return-void

    .line 3989
    :cond_0
    iget v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 3990
    .local v2, "pointerIndex":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 3991
    const/4 v2, 0x0

    .line 3992
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3995
    :cond_1
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_2

    .line 3998
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4001
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 4003
    .local v4, "y":I
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v5, :pswitch_data_0

    .line 3983
    :cond_3
    :goto_0
    :pswitch_0
    return-void

    .line 4009
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4014
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4015
    .local v0, "motionView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 4016
    .local v3, "x":F
    int-to-float v5, v4

    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v6, v6

    invoke-virtual {p0, v3, v5, v6}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_6

    .line 4017
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4018
    if-eqz v0, :cond_4

    .line 4019
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4021
    :cond_4
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v5, :cond_5

    .line 4022
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 4021
    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4023
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4024
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    .line 4022
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    goto :goto_1

    .line 4025
    :cond_6
    if-eqz v0, :cond_3

    .line 4027
    iget-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 4028
    .local v1, "point":[F
    aput v3, v1, v7

    .line 4029
    int-to-float v5, v4

    aput v5, v1, v8

    .line 4030
    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 4031
    aget v5, v1, v7

    aget v6, v1, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    goto :goto_0

    .line 4036
    .end local v0    # "motionView":Landroid/view/View;
    .end local v1    # "point":[F
    .end local v3    # "x":F
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 4003
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4042
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 4191
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 4194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4195
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4199
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4201
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4203
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 4213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StrictMode$Span;->finish()V

    .line 4214
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4041
    :cond_2
    return-void

    .line 4046
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4047
    .local v14, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4048
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 4049
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 4050
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4053
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 4054
    .local v17, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v17, v18

    if-lez v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v17, v18

    if-gez v18, :cond_5

    const/4 v11, 0x1

    .line 4055
    .local v11, "inList":Z
    :goto_1
    if-eqz v11, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 4111
    .end local v11    # "inList":Z
    .end local v17    # "x":F
    :cond_4
    :goto_2
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4112
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 4054
    .restart local v17    # "x":F
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 4056
    .restart local v11    # "inList":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 4057
    new-instance v18, Landroid/widget/AbsListView$PerformClick;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4060
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 4061
    .local v15, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v14, v15, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 4062
    invoke-virtual {v15}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4064
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4066
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 4067
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-nez v18, :cond_c

    .line 4068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v18, v0

    .line 4067
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4069
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4070
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 4071
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4072
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 4073
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4074
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4075
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4076
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4077
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 4078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4079
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 4080
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4082
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4084
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 4085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4087
    :cond_b
    new-instance v18, Landroid/widget/AbsListView$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v15}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 4099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    .line 4100
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 4099
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4105
    :goto_4
    return-void

    .line 4068
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v18, v0

    goto/16 :goto_3

    .line 4102
    :cond_d
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4103
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_4

    .line 4106
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 4107
    invoke-virtual {v15}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_2

    .line 4115
    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "inList":Z
    .end local v14    # "motionPosition":I
    .end local v15    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v17    # "x":F
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 4116
    .local v5, "childCount":I
    if-lez v5, :cond_18

    .line 4117
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v9

    .line 4118
    .local v9, "firstChildTop":I
    add-int/lit8 v18, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 4119
    .local v13, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 4120
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 4121
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v18, :cond_f

    if-lt v9, v7, :cond_f

    .line 4122
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 4123
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v18

    sub-int v18, v18, v6

    move/from16 v0, v18

    if-gt v13, v0, :cond_f

    .line 4124
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4125
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4127
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 4128
    .local v16, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4131
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    .line 4130
    move/from16 v0, v18

    float-to-int v12, v0

    .line 4136
    .local v12, "initialVelocity":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    const/4 v10, 0x1

    .line 4137
    .local v10, "flingVelocity":Z
    :goto_5
    if-eqz v10, :cond_15

    .line 4138
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v18, :cond_10

    .line 4139
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v18, v0

    sub-int v18, v7, v18

    move/from16 v0, v18

    if-eq v9, v0, :cond_15

    .line 4140
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 4141
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move/from16 v0, v18

    if-eq v13, v0, :cond_15

    .line 4142
    :cond_11
    const/16 v18, 0x0

    neg-int v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v18

    if-nez v18, :cond_14

    .line 4143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_12

    .line 4144
    new-instance v18, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4146
    :cond_12
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    neg-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4148
    const/16 v18, 0x0

    neg-int v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto/16 :goto_0

    .line 4136
    .end local v10    # "flingVelocity":Z
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 4150
    .restart local v10    # "flingVelocity":Z
    :cond_14
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4151
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4154
    :cond_15
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4155
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    .line 4157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4159
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    .line 4160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4162
    :cond_17
    if-eqz v10, :cond_0

    const/16 v18, 0x0

    neg-int v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v18

    if-nez v18, :cond_0

    .line 4163
    const/16 v18, 0x0

    neg-int v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    goto/16 :goto_0

    .line 4168
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v10    # "flingVelocity":Z
    .end local v12    # "initialVelocity":I
    .end local v13    # "lastChildBottom":I
    .end local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_18
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4169
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 4174
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_19

    .line 4175
    new-instance v18, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4177
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 4178
    .restart local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4179
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    .line 4181
    .restart local v12    # "initialVelocity":I
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4182
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1a

    .line 4183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    neg-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 4185
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 4042
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 3250
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_0

    .line 3251
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3252
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3253
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3254
    .local v1, "longPressPosition":I
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3255
    .local v2, "longPressId":J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3256
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3257
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3258
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 3259
    const/4 v4, 0x1

    return v4

    .line 3263
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "longPressPosition":I
    .end local v2    # "longPressId":J
    :cond_0
    return v6
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 5723
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5724
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 5725
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 5728
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 5729
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5730
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 5731
    aget v4, v2, v7

    .line 5730
    const/16 v5, 0x51

    invoke-virtual {v3, p0, v5, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5722
    :goto_0
    return-void

    .line 5733
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/4 v8, 0x0

    .line 2631
    iget v4, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq p1, v4, :cond_7

    const/4 v1, 0x1

    .line 2632
    .local v1, "positionChanged":Z
    :goto_0
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 2633
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2636
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2637
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2638
    instance-of v4, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_1

    move-object v4, p2

    .line 2639
    check-cast v4, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2643
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2644
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2645
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2646
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .local v0, "isChildViewEnabled":Z
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v4, v0, :cond_2

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_6

    if-eqz v1, :cond_3

    invoke-virtual {v2, v8, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_6

    invoke-static/range {p0 .. p2}, Landroid/widget/AbsListView$FlymeInjector;->mzPositionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)Z

    return-void

    .end local v0    # "isChildViewEnabled":Z
    .end local v1    # "positionChanged":Z
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "positionChanged":Z
    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4423
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4424
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4425
    iput-object v1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4422
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 3563
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v33, p2, v3

    .line 3564
    .local v33, "rawDeltaY":I
    const/16 v35, 0x0

    .line 3565
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 3566
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 3567
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    .line 3569
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, v3, p2

    .line 3570
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 3569
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3571
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 3572
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 3573
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v34, v3, v4

    .line 3574
    if-eqz p3, :cond_1

    .line 3575
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3576
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3579
    :cond_1
    move/from16 v20, v33

    .line 3581
    .local v20, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, p2, v3

    add-int v21, v3, v34

    .line 3582
    .local v21, "incrementalDeltaY":I
    :goto_1
    const/16 v22, 0x0

    .line 3584
    .local v22, "lastYCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 3592
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    .line 3594
    const-string/jumbo v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3597
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 3601
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 3602
    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 3603
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 3604
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_3

    .line 3605
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3610
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_b

    .line 3611
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 3618
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    .line 3619
    .local v26, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3620
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_4

    .line 3621
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v26

    .line 3625
    :cond_4
    const/16 v18, 0x0

    .line 3626
    .local v18, "atEdge":Z
    if-eqz v21, :cond_5

    .line 3627
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 3631
    .end local v18    # "atEdge":Z
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3632
    if-eqz v25, :cond_7

    .line 3635
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    .line 3636
    .local v27, "motionViewRealTop":I
    if-eqz v18, :cond_6

    .line 3639
    move/from16 v0, v21

    neg-int v3, v0

    .line 3640
    sub-int v4, v27, v26

    .line 3639
    sub-int v7, v3, v4

    .line 3641
    .local v7, "overscroll":I
    sub-int v5, v7, v21

    .line 3642
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 3641
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3643
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    rsub-int/lit8 v22, v3, 0x0

    .line 3644
    if-eqz p3, :cond_6

    .line 3645
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3646
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 3683
    .end local v7    # "overscroll":I
    :cond_6
    :goto_3
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3685
    .end local v27    # "motionViewRealTop":I
    :cond_7
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3562
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    :cond_8
    :goto_4
    return-void

    .line 3569
    .end local v20    # "deltaY":I
    .end local v21    # "incrementalDeltaY":I
    .end local v22    # "lastYCorrection":I
    :cond_9
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    .line 3581
    .restart local v20    # "deltaY":I
    :cond_a
    move/from16 v21, v20

    .restart local v21    # "incrementalDeltaY":I
    goto/16 :goto_1

    .line 3615
    .restart local v22    # "lastYCorrection":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    .line 3650
    .restart local v7    # "overscroll":I
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevTop":I
    .restart local v27    # "motionViewRealTop":I
    :cond_c
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mScrollY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 3649
    const/4 v6, 0x0

    .line 3650
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    .line 3649
    invoke-virtual/range {v5 .. v14}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 3652
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    .line 3654
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3657
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 3658
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_e

    .line 3659
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_6

    .line 3660
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3661
    :cond_e
    if-nez v19, :cond_f

    .line 3662
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 3663
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3665
    :cond_f
    if-lez v21, :cond_11

    .line 3666
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3667
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3666
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3668
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_10

    .line 3669
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3671
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    goto/16 :goto_3

    .line 3672
    :cond_11
    if-gez v21, :cond_6

    .line 3673
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3674
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 3673
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3675
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3676
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3678
    :cond_12
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_3

    .line 3687
    .end local v7    # "overscroll":I
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    .end local v27    # "motionViewRealTop":I
    .end local v31    # "overscrollMode":I
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 3688
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    .line 3689
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v30, v0

    .line 3690
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 3691
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_19

    const/16 v28, 0x1

    .line 3693
    .local v28, "newDirection":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_14

    .line 3694
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 3697
    :cond_14
    move/from16 v0, v21

    neg-int v10, v0

    .line 3698
    .local v10, "overScrollDistance":I
    if-gez v29, :cond_1a

    if-ltz v30, :cond_1a

    .line 3699
    :cond_15
    move/from16 v0, v30

    neg-int v10, v0

    .line 3700
    add-int v21, v21, v10

    .line 3705
    :goto_6
    if-eqz v10, :cond_16

    .line 3706
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3707
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v16, v0

    .line 3706
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 3707
    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    .line 3706
    invoke-virtual/range {v8 .. v17}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3708
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 3709
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_1c

    .line 3710
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_16

    .line 3711
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 3730
    .end local v31    # "overscrollMode":I
    :cond_16
    :goto_7
    if-eqz v21, :cond_18

    .line 3732
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_17

    .line 3733
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3734
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 3737
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 3739
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3743
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v24

    .line 3745
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3746
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3747
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_20

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3748
    add-int v3, p2, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3749
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3751
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_18
    add-int/lit8 v3, p2, 0x0

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 3752
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_4

    .line 3691
    .end local v10    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_19
    const/16 v28, -0x1

    .restart local v28    # "newDirection":I
    goto/16 :goto_5

    .line 3698
    .restart local v10    # "overScrollDistance":I
    :cond_1a
    if-lez v29, :cond_1b

    if-lez v30, :cond_15

    .line 3702
    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 3712
    .restart local v31    # "overscrollMode":I
    :cond_1c
    if-lez v33, :cond_1e

    .line 3713
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3714
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3713
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3715
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 3716
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3718
    :cond_1d
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    goto/16 :goto_7

    .line 3719
    :cond_1e
    if-gez v33, :cond_16

    .line 3720
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3721
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 3720
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 3722
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 3723
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3725
    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_7

    .line 3747
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_8
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1400
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 1399
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 1337
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 1343
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 1345
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 1346
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 1335
    :cond_1
    return-void

    .line 1338
    :cond_2
    if-eqz p1, :cond_0

    .line 1339
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 1340
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2460
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2462
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    .line 2463
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 2470
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 2471
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 2473
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2474
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2475
    if-eq v0, v1, :cond_1

    .line 2476
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2459
    :cond_1
    return-void

    .line 2464
    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2465
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    move-object v0, v1

    .line 2467
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .locals 8
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "useOffsets"    # Z

    .prologue
    const/4 v0, 0x0

    .line 3358
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3359
    .local v3, "longPressPosition":I
    if-gez v3, :cond_0

    .line 3360
    return v0

    .line 3363
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3364
    .local v4, "longPressId":J
    const/4 v7, 0x0

    .line 3366
    .local v7, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_1

    .line 3367
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v7

    .line 3371
    .end local v7    # "handled":Z
    :cond_1
    if-nez v7, :cond_2

    .line 3372
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3373
    .local v6, "child":Landroid/view/View;
    invoke-virtual {p0, v6, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3375
    if-eqz p4, :cond_3

    .line 3376
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v7

    .line 3382
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    :goto_0
    return v7

    .line 3378
    .restart local v6    # "child":Landroid/view/View;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v7

    .local v7, "handled":Z
    goto :goto_0
.end method

.method private showContextMenuInternal(FFZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffsets"    # Z

    .prologue
    .line 3323
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 3324
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 3325
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3326
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3327
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3328
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3329
    if-eqz p3, :cond_0

    .line 3330
    invoke-super {p0, p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v4

    return v4

    .line 3332
    :cond_0
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 3336
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :cond_1
    if-eqz p3, :cond_2

    .line 3337
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenu(FF)Z

    move-result v4

    return v4

    .line 3339
    :cond_2
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v4

    return v4
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 5714
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5715
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 5716
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 5718
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 5712
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3529
    iget v5, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v0, p2, v5

    .line 3530
    .local v0, "deltaY":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3531
    .local v1, "distance":I
    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v5, :cond_3

    move v3, v6

    .line 3532
    .local v3, "overscroll":Z
    :goto_0
    if-nez v3, :cond_0

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v1, v5, :cond_6

    .line 3533
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    .line 3534
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 3535
    if-eqz v3, :cond_4

    .line 3536
    const/4 v5, 0x5

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3537
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3542
    :goto_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3543
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3544
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v8

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3545
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 3546
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3548
    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3551
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 3552
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_2

    .line 3553
    invoke-interface {v4, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3555
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 3556
    return v6

    .end local v2    # "motionView":Landroid/view/View;
    .end local v3    # "overscroll":Z
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_3
    move v3, v7

    .line 3531
    goto :goto_0

    .line 3539
    .restart local v3    # "overscroll":Z
    :cond_4
    const/4 v5, 0x3

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3540
    if-lez v0, :cond_5

    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_2
    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_5
    iget v5, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v5, v5

    goto :goto_2

    .line 3559
    :cond_6
    return v7
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1220
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1221
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1222
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1223
    const/16 v7, 0xb

    .line 1222
    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1224
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1225
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1226
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1228
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1229
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1224
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1222
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "useActivated":Z
    goto :goto_0

    .line 1230
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    :cond_2
    if-eqz v5, :cond_0

    .line 1231
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1219
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, #android:drawable@list_selector_background#t

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4561
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 4562
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4563
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4565
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 4566
    return-void

    .line 4569
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 4570
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4571
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4572
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4574
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4569
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4560
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 6185
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 6144
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5085
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5086
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 5087
    return v7

    .line 5090
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5091
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5092
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 5093
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 5094
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 5095
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_2

    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    .line 5097
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 5098
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_5

    :cond_4
    :goto_1
    return v6

    :cond_5
    move v6, v7

    goto :goto_1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6058
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6214
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1069
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1072
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1065
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 6107
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 6108
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6109
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6110
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6111
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6106
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2067
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2068
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 2069
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v6, :cond_2

    .line 2070
    mul-int/lit8 v2, v1, 0x64

    .line 2072
    .local v2, "extent":I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2073
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2074
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2075
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2076
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2079
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2080
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2081
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2082
    if-lez v3, :cond_1

    .line 2083
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2086
    :cond_1
    return v2

    .line 2088
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    const/4 v6, 0x1

    return v6

    .line 2091
    :cond_3
    return v7
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2096
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2097
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2098
    .local v0, "childCount":I
    if-ltz v2, :cond_3

    if-lez v0, :cond_3

    .line 2099
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_0

    .line 2100
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2101
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2102
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2103
    .local v3, "height":I
    if-lez v3, :cond_3

    .line 2104
    mul-int/lit8 v7, v2, 0x64

    mul-int/lit8 v8, v5, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    .line 2105
    iget v8, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 2104
    add-int/2addr v7, v8

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    return v7

    .line 2109
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2110
    .local v1, "count":I
    if-nez v2, :cond_1

    .line 2111
    const/4 v4, 0x0

    .line 2117
    .local v4, "index":I
    :goto_0
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    return v7

    .line 2112
    .end local v4    # "index":I
    :cond_1
    add-int v7, v2, v0

    if-ne v7, v1, :cond_2

    .line 2113
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_0

    .line 2115
    .end local v4    # "index":I
    :cond_2
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_0

    .line 2120
    .end local v1    # "count":I
    .end local v4    # "index":I
    :cond_3
    return v10
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2126
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2127
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2128
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2130
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2135
    :cond_0
    :goto_0
    return v0

    .line 2133
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 5497
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5499
    const/4 v2, 0x0

    .line 5500
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 5501
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 5502
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5504
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 5505
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 5507
    add-int/lit8 v3, v5, -0x14

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 5508
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5509
    .local v10, "end":I
    const/4 v11, 0x0

    .line 5510
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 5511
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 5512
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 5513
    const/4 v11, 0x1

    .line 5514
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5515
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5520
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 5521
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5522
    add-int/lit8 v9, v9, -0x1

    .line 5523
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 5524
    const/4 v2, 0x1

    .line 5525
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 5526
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 5527
    const/4 v8, 0x0

    .line 5526
    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 5500
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 5510
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 5531
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 5535
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 5536
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 5495
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3124
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 4894
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6360
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6359
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2678
    const/4 v2, 0x0

    .line 2679
    .local v2, "saveCount":I
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    const/4 v0, 0x1

    .line 2680
    .local v0, "clipToPadding":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2681
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2682
    iget v3, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 2683
    .local v3, "scrollX":I
    iget v4, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 2684
    .local v4, "scrollY":I
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    .line 2685
    iget v7, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    .line 2686
    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    .line 2684
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2687
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2690
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2691
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    .line 2692
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2695
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2697
    if-eqz v1, :cond_2

    .line 2698
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2701
    :cond_2
    if-eqz v0, :cond_3

    .line 2702
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2703
    iget v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 2677
    :cond_3
    return-void

    .line 2679
    .end local v0    # "clipToPadding":Z
    .end local v1    # "drawSelectorOnTop":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3419
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 3413
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v10, p0, Landroid/widget/AbsListView;->mIsFlymeThemeLight:Z

    if-eqz v10, :cond_flyme_0

    return-void

    :cond_flyme_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_4

    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    .local v5, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v8, v10, v11

    .line 4369
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v3, v10, v11

    .line 4370
    .local v3, "height":I
    iget v6, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 4371
    .local v6, "translateX":I
    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 4378
    .local v7, "translateY":I
    :goto_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_1

    .line 4379
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 4381
    .local v4, "restoreCount":I
    add-int v10, v6, v8

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    add-int/2addr v11, v7

    .line 4380
    invoke-virtual {p1, v6, v7, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4382
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v2, v10, v7

    .line 4383
    .local v2, "edgeY":I
    int-to-float v10, v6

    int-to-float v11, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4384
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4385
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4386
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 4388
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4390
    .end local v2    # "edgeY":I
    .end local v4    # "restoreCount":I
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_4

    .line 4391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 4392
    .restart local v4    # "restoreCount":I
    add-int v10, v7, v3

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 4393
    add-int v11, v6, v8

    add-int v12, v7, v3

    .line 4392
    invoke-virtual {p1, v6, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4394
    neg-int v10, v8

    add-int v1, v10, v6

    .line 4395
    .local v1, "edgeX":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 4396
    if-eqz v0, :cond_2

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    .line 4395
    :cond_2
    sub-int v2, v10, v9

    .line 4397
    .restart local v2    # "edgeY":I
    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4398
    const/high16 v9, 0x43340000    # 180.0f

    int-to-float v10, v8

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4399
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 4400
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4401
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    .line 4403
    :cond_3
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4357
    .end local v0    # "clipToPadding":Z
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v5    # "scrollY":I
    .end local v6    # "translateX":I
    .end local v7    # "translateY":I
    .end local v8    # "width":I
    :cond_4
    return-void

    .line 4373
    .restart local v0    # "clipToPadding":Z
    .restart local v5    # "scrollY":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    .line 4374
    .restart local v8    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 4375
    .restart local v3    # "height":I
    const/4 v6, 0x0

    .line 4376
    .restart local v6    # "translateX":I
    const/4 v7, 0x0

    .restart local v7    # "translateY":I
    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2920
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 2921
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 2919
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 3
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 7205
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7207
    const-string/jumbo v1, "drawing:cacheColorHint"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7208
    const-string/jumbo v1, "list:fastScrollEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7209
    const-string/jumbo v1, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7210
    const-string/jumbo v1, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7211
    const-string/jumbo v1, "list:stackFromBottom"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7212
    const-string/jumbo v1, "list:textFilterEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7214
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 7215
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 7216
    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 7217
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 7204
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 5350
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 5351
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 5352
    return v2

    .line 5355
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 5356
    .local v1, "motionRow":I
    if-eq v1, v2, :cond_1

    .end local v1    # "motionRow":I
    :goto_0
    return v1

    .restart local v1    # "motionRow":I
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 1622
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1623
    return-object p0

    .line 1625
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 4304
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4305
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4307
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4308
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4303
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 6198
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    .line 6199
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 6198
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6208
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 6204
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 6209
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1553
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2264
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2265
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2266
    check-cast p1, Landroid/view/View;

    .line 2267
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2270
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2271
    const/4 v1, 0x0

    return-object v1

    .line 2274
    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2157
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2158
    .local v1, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2159
    .local v2, "fadeEdge":F
    if-nez v1, :cond_0

    .line 2160
    return v2

    .line 2162
    :cond_0
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 2163
    const/high16 v5, 0x3f800000    # 1.0f

    return v5

    .line 2166
    :cond_1
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2167
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 2168
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2169
    .local v3, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_2

    .line 2170
    sub-int v5, v0, v4

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    .line 2169
    .end local v2    # "fadeEdge":F
    :cond_2
    return v2
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 2729
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 6276
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1047
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v4, :cond_1

    .line 1048
    :cond_0
    new-array v4, v5, [J

    return-object v4

    .line 1047
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    .line 1051
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1052
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1053
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1055
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1056
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1055
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1059
    :cond_2
    return-object v3
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1015
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1016
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1019
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1032
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1035
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1242
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->getFlymeChoiceMode(Landroid/widget/AbsListView;)I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3309
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getEnableListAccelerate()Z
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x1

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1691
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1692
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1695
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1696
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1690
    :goto_0
    return-void

    .line 1699
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 5293
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 5283
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 7146
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 7147
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7148
    .local v0, "childCount":I
    sub-int v3, p1, v1

    .line 7149
    .local v3, "index":I
    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_0

    .line 7151
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7152
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    return v5

    .line 7155
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 7156
    .restart local v4    # "view":Landroid/view/View;
    iget v5, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 7157
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 7158
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7159
    return v2
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 2714
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2350
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2362
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 2724
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2322
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2323
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2325
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1578
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 1579
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 1588
    return v1

    .line 1581
    :pswitch_0
    return v1

    .line 1583
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 1586
    :pswitch_2
    const/4 v1, 0x2

    return v1

    .line 1579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2855
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 6243
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2017
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2020
    :cond_0
    return-object v1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2140
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2141
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2142
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2143
    return v1

    .line 2145
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 2146
    const/high16 v4, 0x3f800000    # 1.0f

    return v4

    .line 2149
    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2150
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2151
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    .end local v1    # "fadeEdge":F
    :cond_2
    return v1
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 2719
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 6238
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1431
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method handleBoundsChange()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2759
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2760
    .local v1, "childCount":I
    if-lez v1, :cond_3

    .line 2761
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2762
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 2763
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2764
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2765
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2767
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ge v4, v5, :cond_2

    .line 2768
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 2763
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2767
    :cond_2
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v4, v5, :cond_1

    goto :goto_1

    .line 2758
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 5542
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5543
    .local v1, "count":I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5544
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 5546
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    :cond_0

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->updateFlymeHoldView(Landroid/widget/AbsListView;)V

    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    if-lez v1, :cond_d

    iget-boolean v10, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v10, :cond_6

    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void

    :cond_1
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_5

    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_2

    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 5574
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5575
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5576
    .local v2, "lastBottom":I
    :goto_0
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_4

    .line 5577
    if-gt v2, v5, :cond_4

    .line 5578
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5579
    return-void

    .line 5575
    .end local v2    # "lastBottom":I
    :cond_3
    move v2, v5

    .restart local v2    # "lastBottom":I
    goto :goto_0

    .line 5583
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 5586
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_5
    iget v10, p0, Landroid/widget/AbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 5634
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_c

    .line 5636
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 5639
    .local v6, "newPos":I
    if-lt v6, v1, :cond_7

    .line 5640
    add-int/lit8 v6, v1, -0x1

    .line 5642
    :cond_7
    if-gez v6, :cond_8

    .line 5643
    const/4 v6, 0x0

    .line 5647
    :cond_8
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5649
    .local v7, "selectablePos":I
    if-ltz v7, :cond_b

    .line 5650
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5651
    return-void

    .line 5588
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 5593
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5594
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5596
    return-void

    .line 5600
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 5601
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_6

    .line 5603
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5604
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_6

    .line 5606
    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5608
    iget-wide v8, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    .line 5611
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5619
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5620
    return-void

    .line 5615
    :cond_a
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_1

    .line 5627
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5628
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 5630
    return-void

    .line 5654
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_b
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5655
    if-ltz v7, :cond_d

    .line 5656
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5657
    return-void

    .line 5663
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_c
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v10, :cond_d

    .line 5664
    return-void

    .line 5671
    :cond_d
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_e

    :goto_2
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5672
    iput v14, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5673
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 5674
    iput v14, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 5675
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 5676
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 5677
    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 5678
    iput v14, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 5679
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    .line 5541
    return-void

    :cond_e
    move v8, v9

    .line 5671
    goto :goto_2

    .line 5586
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleScrollBarDragging(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3817
    const/4 v0, 0x0

    return v0
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 6120
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 5307
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 5308
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5309
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5311
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 5312
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5314
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 5315
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 5316
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 5306
    :cond_2
    return-void
.end method

.method protected internalSetPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2737
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->internalSetPadding(IIII)V

    .line 2738
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2739
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 2736
    :cond_0
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 5363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 5364
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 5365
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 5366
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5362
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1522
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 1525
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1526
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1528
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 1521
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1419
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v1, :cond_1

    .line 1420
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    :cond_0
    return v0

    .line 1422
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    :cond_2
    return v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1442
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1443
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1445
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 5794
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 998
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 1002
    :cond_0
    return v1
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 2709
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1639
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1505
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1716
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1686
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1471
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 2966
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 2967
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2965
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2863
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2867
    iget-object v2, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2868
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2869
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2870
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2862
    :cond_1
    :goto_0
    return-void

    .line 2864
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 2872
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_3
    iget v5, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2874
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 2875
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    .line 2876
    :cond_4
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 2878
    :cond_5
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 2880
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    .line 2881
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2882
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_6

    .line 2883
    if-eqz v1, :cond_8

    .line 2884
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 2885
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    .line 2884
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2890
    :cond_6
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 2891
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_7

    .line 2892
    new-instance v5, Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-direct {v5, p0, v7}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForKeyLongPress;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 2894
    :cond_7
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2895
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2887
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_8
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2255
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "outMetadata"    # [Z

    .prologue
    const-wide/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2393
    const-string/jumbo v5, "obtainView"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2395
    aput-boolean v7, p2, v7

    .line 2399
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2400
    .local v3, "transientView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 2401
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 2404
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v5, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .local v4, "updatedView":Landroid/view/View;
    if-eq v4, v3, :cond_0

    invoke-direct {p0, v4, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .end local v4    # "updatedView":Landroid/view/View;
    :cond_0
    aput-boolean v8, p2, v7

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V


    invoke-static {p0, v3}, Landroid/widget/AbsListView$FlymeInjector;->setFlymeHoldViewBackground(Landroid/widget/AbsListView;Landroid/view/View;)V

    return-object v3

    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2422
    .local v2, "scrapView":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2423
    .local v0, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2424
    if-eq v0, v2, :cond_7

    .line 2426
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2435
    :cond_2
    :goto_0
    iget v5, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v5, :cond_3

    .line 2436
    iget v5, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2439
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 2440
    invoke-virtual {v0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2443
    :cond_4
    invoke-direct {p0, v0, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2445
    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2446
    iget-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v5, :cond_5

    .line 2447
    new-instance v5, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 2449
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_6
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {p0, p1, v0}, Landroid/widget/AbsListView$FlymeInjector;->setFlymeHoldViewBackground(Landroid/widget/AbsListView;ILandroid/view/View;)V

    return-object v0

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2428
    aput-boolean v8, p2, v7

    .line 2431
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 2972
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 2974
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2975
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2976
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-eqz v1, :cond_2

    .line 2980
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 2981
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 2982
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2985
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2986
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2987
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2971
    :cond_1
    return-void

    .line 2977
    :cond_2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3129
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 3130
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3131
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3133
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3134
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3136
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3137
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3139
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3140
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3128
    :cond_3
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x0

    .line 5875
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5876
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 5877
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 5878
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 5880
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 5881
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5882
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object v0

    .line 5884
    :cond_1
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2993
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 2995
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 2998
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3001
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3003
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3004
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3005
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3006
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3007
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3010
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3011
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3012
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3015
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3016
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3017
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3020
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3021
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3022
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3025
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3026
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3029
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3030
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3033
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3034
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3037
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3038
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3041
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3042
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3043
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3046
    :cond_8
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 2992
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 5684
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 5685
    sparse-switch p1, :sswitch_data_0

    .line 5697
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 5683
    return-void

    .line 5687
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5688
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 5692
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5693
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 5697
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 5685
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 6190
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 6191
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6192
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 6189
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2025
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2026
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2024
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 2030
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2031
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2032
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2034
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 4263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 4264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 4291
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 4266
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 4267
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 4268
    .local v2, "vscroll":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 4269
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollFactor()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 4270
    .local v1, "delta":I
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4271
    return v5

    .line 4278
    .end local v1    # "delta":I
    .end local v2    # "vscroll":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 4279
    .local v0, "actionButton":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    .line 4280
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 4281
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v3, v5, :cond_0

    .line 4282
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4283
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4284
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4264
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 6125
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6127
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6124
    :cond_0
    :goto_0
    return-void

    .line 6127
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 6128
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 6132
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6133
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v3, 0x1

    .line 2565
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 2567
    return-void

    .line 2571
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2572
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v2, :cond_3

    .line 2573
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2578
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 2583
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 2584
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2585
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2590
    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2591
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2592
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2595
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2596
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2597
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2564
    :cond_2
    return-void

    .line 2575
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v0, 0x0

    .local v0, "isItemEnabled":Z
    goto :goto_0

    .line 2579
    .end local v0    # "isItemEnabled":Z
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2580
    return-void

    .line 2587
    :cond_5
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 1559
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1560
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1561
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1563
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1564
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1566
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1567
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1568
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1569
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1573
    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1574
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1558
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4439
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4440
    const/4 v0, 0x1

    return v0

    .line 4443
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4451
    .local v0, "actionMasked":I
    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v7, :cond_0

    .line 4452
    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4455
    :cond_0
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4463
    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v7, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4464
    return v9

    .line 4460
    :cond_1
    return v8

    .line 4467
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 4537
    :cond_3
    :goto_0
    :pswitch_0
    return v8

    .line 4469
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4470
    .local v3, "touchMode":I
    const/4 v7, 0x6

    if-eq v3, v7, :cond_4

    const/4 v7, 0x5

    if-ne v3, v7, :cond_5

    .line 4471
    :cond_4
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4472
    return v9

    .line 4475
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 4476
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 4477
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4479
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 4480
    .local v1, "motionPosition":I
    if-eq v3, v12, :cond_6

    if-ltz v1, :cond_6

    .line 4483
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4484
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4485
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 4486
    iput v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4487
    iput v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4488
    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4489
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 4491
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 4492
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 4493
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4494
    iput v8, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4495
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4496
    if-ne v3, v12, :cond_3

    .line 4497
    return v9

    .line 4503
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    .line 4505
    :pswitch_3
    iget v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 4506
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_7

    .line 4507
    const/4 v2, 0x0

    .line 4508
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4510
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v6, v7

    .line 4511
    .restart local v6    # "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 4512
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4513
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v7, v6, v11}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4514
    return v9

    .line 4523
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_4
    iput v10, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4524
    iput v10, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 4525
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4526
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4527
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    goto/16 :goto_0

    .line 4532
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 4467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 4503
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3387
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3392
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3393
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3394
    return v5

    .line 3396
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3397
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 3398
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3400
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3401
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3402
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v2, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3403
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 3405
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3406
    return v5

    .line 3409
    .end local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mInLayout:Z

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnLayout(Landroid/widget/AbsListView;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mInLayout:Z

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mInLayout:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mInLayout:Z

<<<<<<< VENDOR #Conflict 0
    :cond_2
======= #@.method protected onLayout@
    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnLayout2(Landroid/widget/AbsListView;)V

>>>>>>> BOSP #Conflict 0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2176
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 2177
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2179
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2180
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 2181
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 2182
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 2183
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 2186
    iget v7, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v7, v5, :cond_1

    .line 2187
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2188
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v8

    sub-int v3, v7, v8

    .line 2189
    .local v3, "listBottom":I
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2190
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2191
    .local v1, "lastBottom":I
    :goto_0
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v7, v8, :cond_4

    .line 2192
    if-gt v1, v3, :cond_3

    .line 2191
    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2175
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    .line 2190
    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    .restart local v1    # "lastBottom":I
    goto :goto_0

    :cond_3
    move v5, v6

    .line 2192
    goto :goto_1

    :cond_4
    move v5, v6

    .line 2191
    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 4341
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4342
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4343
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 4344
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4345
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 4346
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4348
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4349
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4351
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4353
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 4325
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 4326
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4327
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4328
    .local v8, "oldTop":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p5

    neg-int v3, p5

    invoke-virtual {p0, v0, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4329
    :cond_0
    move v4, p5

    .line 4330
    .local v4, "myUnconsumed":I
    const/4 v2, 0x0

    .line 4331
    .local v2, "myConsumed":I
    if-eqz v7, :cond_1

    .line 4332
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, v8

    .line 4333
    sub-int v4, p5, v2

    :cond_1
    move-object v0, p0

    move v3, v1

    .line 4335
    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 4324
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_2
    return-void

    .line 4327
    .end local v8    # "oldTop":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "oldTop":I
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 4318
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4319
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 4317
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 4252
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 4253
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->mzOnOverScrolled(Landroid/widget/AbsListView;)V

    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6368
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v0, v1, :cond_1

    .line 6369
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6370
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 6371
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 6372
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6374
    :cond_0
    return v2

    .line 6375
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2

    .line 6376
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 6377
    const/4 v0, 0x1

    return v0

    .line 6379
    :cond_2
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 6386
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    move-object v0, p1

    .line 1932
    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 1934
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1935
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1937
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 1939
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4

    .line 1940
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1941
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1942
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1943
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 1944
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1945
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 1959
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1961
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 1962
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1965
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 1966
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1969
    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1971
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1972
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 1973
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1976
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1931
    return-void

    .line 1946
    :cond_4
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 1947
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 1949
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 1950
    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 1951
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 1952
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 1953
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 1954
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 1955
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 1956
    iput v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3106
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 3107
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 3108
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3105
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    .prologue
    .line 1840
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 1842
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    .line 1844
    .local v11, "superState":Landroid/os/Parcelable;
    new-instance v10, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v10, v11}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1846
    .local v10, "ss":Landroid/widget/AbsListView$SavedState;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v14, :cond_0

    .line 1848
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1849
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1850
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1851
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->position:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1852
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->height:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1853
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1854
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v14, v14, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1855
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1856
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1857
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1858
    return-object v10

    .line 1861
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v14

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v14, :cond_3

    const/4 v5, 0x1

    .line 1862
    .local v5, "haveChildren":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v8

    .line 1863
    .local v8, "selectedId":J
    iput-wide v8, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 1864
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    .line 1866
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-ltz v14, :cond_4

    .line 1868
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1869
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1870
    const-wide/16 v14, -0x1

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1897
    :goto_1
    const/4 v14, 0x0

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1898
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v14, :cond_1

    .line 1899
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1900
    .local v12, "textFilter":Landroid/widget/EditText;
    if-eqz v12, :cond_1

    .line 1901
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1902
    .local v3, "filterText":Landroid/text/Editable;
    if-eqz v3, :cond_1

    .line 1903
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1908
    .end local v3    # "filterText":Landroid/text/Editable;
    .end local v12    # "textFilter":Landroid/widget/EditText;
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    :goto_2
    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 1910
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v14, :cond_2

    .line 1911
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v14

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1913
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v14, :cond_9

    .line 1914
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 1915
    .local v7, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 1916
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_8

    .line 1917
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1916
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1861
    .end local v2    # "count":I
    .end local v5    # "haveChildren":Z
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v8    # "selectedId":J
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "haveChildren":Z
    goto/16 :goto_0

    .line 1872
    .restart local v8    # "selectedId":J
    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v14, :cond_6

    .line 1882
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1883
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1884
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1885
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v14, :cond_5

    .line 1886
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v4, v14, -0x1

    .line 1888
    :cond_5
    iput v4, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 1889
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto/16 :goto_1

    .line 1891
    .end local v4    # "firstPos":I
    .end local v13    # "v":Landroid/view/View;
    :cond_6
    const/4 v14, 0x0

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 1892
    const-wide/16 v14, -0x1

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 1893
    const/4 v14, 0x0

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 1908
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1919
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iput-object v7, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1921
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 1923
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v14, :cond_a

    .line 1924
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v14}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 1927
    :cond_a
    return-object v10
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2745
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 2746
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 2747
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 2744
    :cond_0

    invoke-static/range {p0 .. p4}, Landroid/widget/AbsListView$FlymeInjector;->mzOnSizeChanged(Landroid/widget/AbsListView;IIII)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    const/4 v0, 0x0

    .line 4313
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6154
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6155
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 6156
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6157
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 6158
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 6160
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 6161
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 6167
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 6168
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 6170
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 6171
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 6153
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 6162
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 6164
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 6165
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 6173
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 3822
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 3825
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v8

    :cond_0
    return v8

    .line 3828
    :cond_1
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v9, :cond_2

    .line 3829
    iget-object v9, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v9}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3832
    :cond_2
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v9, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3840
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 3842
    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v9, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_4

    return v8

    :cond_3
    return v11

    :cond_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .local v5, "vtev":Landroid/view/MotionEvent;

    invoke-static/range {p0 .. p1}, Landroid/widget/AbsListView$FlymeInjector;->mzOnTouchEvent(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "actionMasked":I
    if-nez v0, :cond_5

    iput v11, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    :cond_5
    const/4 v9, 0x0

    iget v10, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3854
    packed-switch v0, :pswitch_data_0

    .line 3912
    :goto_0
    :pswitch_0
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_6

    .line 3913
    iget-object v9, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3915
    :cond_6
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 3916
    return v8

    .line 3856
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 3861
    :pswitch_2
    invoke-direct {p0, p1, v5}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 3866
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 3871
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    goto :goto_0

    .line 3876
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3877
    iget v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3878
    .local v6, "x":I
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3879
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    .line 3880
    .local v4, "motionPosition":I
    if-ltz v4, :cond_7

    .line 3882
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3883
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3884
    iput v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3886
    .end local v1    # "child":Landroid/view/View;
    :cond_7
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_0

    .line 3892
    .end local v4    # "motionPosition":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 3893
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 3894
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v6, v9

    .line 3895
    .restart local v6    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v7, v9

    .line 3896
    .restart local v7    # "y":I
    iput v11, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 3897
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 3898
    iput v6, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 3899
    iput v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 3900
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    .line 3901
    .restart local v4    # "motionPosition":I
    if-ltz v4, :cond_8

    .line 3903
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3904
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3905
    iput v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3907
    .end local v1    # "child":Landroid/view/View;
    :cond_8
    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_0

    .line 3854
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 3
    .param p1, "isInTouchMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3781
    if-eqz p1, :cond_2

    .line 3783
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3787
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 3790
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3792
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3780
    :cond_1
    :goto_0
    return-void

    .line 3794
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3795
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 3796
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3797
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 3799
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3800
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3803
    :cond_5
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 3804
    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3805
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 3806
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 3807
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3051
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3053
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .local v0, "touchMode":I
    :goto_0

    invoke-static/range {p0 .. p1}, Landroid/widget/AbsListView$FlymeInjector;->mzOnWindowFocusChanged(Landroid/widget/AbsListView;Z)V

    if-nez p1, :cond_4

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    iput v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    if-ne v0, v4, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_2
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    return-void

    .end local v0    # "touchMode":I
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "touchMode":I
    goto :goto_0

    .line 3080
    :cond_4
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-eqz v1, :cond_6

    .line 3086
    :cond_5
    :goto_2
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 3088
    if-ne v0, v4, :cond_7

    .line 3090
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 3082
    :cond_6
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_2

    .line 3094
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 3095
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3096
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1595
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1596
    return v3

    .line 1598
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1616
    return v2

    .line 1601
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1602
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 1603
    .local v0, "viewportHeight":I
    invoke-virtual {p0, v0, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1604
    return v3

    .line 1606
    .end local v0    # "viewportHeight":I
    :cond_1
    return v2

    .line 1609
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1610
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 1611
    .restart local v0    # "viewportHeight":I
    neg-int v1, v0

    invoke-virtual {p0, v1, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1612
    return v3

    .line 1614
    .end local v0    # "viewportHeight":I
    :cond_2
    return v2

    .line 1598
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1157
    const/4 v8, 0x0

    .line 1158
    .local v8, "handled":Z
    const/4 v7, 0x1

    .line 1160
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v3, :cond_4

    .line 1161
    const/4 v8, 0x1

    .line 1162
    const/4 v0, 0x0

    .line 1164
    .local v0, "checkedStateChanged":Z
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1165
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1166
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    .line 1167
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1168
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    if-eqz v6, :cond_7

    .line 1170
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1175
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1176
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1180
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1181
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    const/4 v7, 0x0

    :cond_2
    const/4 v0, 0x1

    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .end local v0    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .end local v8    # "handled":Z
    :cond_5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    invoke-static/range {v2 .. v7}, Landroid/widget/AbsListView$FlymeInjector;->performItemHold(Landroid/widget/AbsListView;Landroid/view/View;IJZ)V

    return v8

    .restart local v0    # "checkedStateChanged":Z
    .restart local v8    # "handled":Z
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "checked":Z
    goto :goto_0

    .line 1172
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1178
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1186
    .end local v6    # "checked":Z
    :cond_9
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v3, v2, :cond_3

    .line 1187
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    move v6, v1

    .line 1188
    .local v6, "checked":Z
    :goto_4
    if-eqz v6, :cond_d

    .line 1189
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1190
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1191
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1192
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1193
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1195
    :cond_a
    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1199
    :cond_b
    :goto_5
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1187
    goto :goto_4

    .line 1196
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1197
    :cond_e
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v7, v6

    .line 3268
    invoke-virtual/range {v1 .. v7}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v0

    return v0
.end method

.method performLongPress(Landroid/view/View;IJFF)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F

    .prologue

    invoke-static/range {p0 .. p4}, Landroid/widget/AbsListView$FlymeInjector;->mzPerformLongPress(Landroid/widget/AbsListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    const/4 v0, 0x1

    return v0

    :cond_flyme_0

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    .line 3279
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3280
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 3281
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 3282
    invoke-virtual {p0, p2, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 3283
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3285
    :cond_0
    return v2

    .line 3288
    :cond_1
    const/4 v6, 0x0

    .line 3289
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 3290
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3293
    .end local v6    # "handled":Z
    :cond_2
    if-nez v6, :cond_3

    .line 3294
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3295
    cmpl-float v0, p5, v7

    if-eqz v0, :cond_5

    cmpl-float v0, p6, v7

    if-eqz v0, :cond_5

    .line 3296
    invoke-super {p0, p0, p5, p6}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v6

    .line 3301
    :cond_3
    :goto_0
    if-eqz v6, :cond_4

    .line 3302
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 3304
    :cond_4
    return v6

    .line 3298
    :cond_5
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .local v6, "handled":Z
    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3433
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3434
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 3435
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3436
    iget-object v2, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3439
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3440
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3441
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3442
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3443
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3444
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3445
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    return v4

    .line 3440
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3449
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3462
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 3463
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 3464
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    return-wide v2

    .line 3466
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 2627
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2626
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 2616
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2617
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2618
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 2619
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 2620
    .local v5, "y":F
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2615
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 2622
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 2609
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 2608
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v7, 0x0

    .line 6287
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6288
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->-get0(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 6291
    .local v3, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6292
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6293
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 6295
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6296
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6297
    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6298
    if-eqz v3, :cond_0

    .line 6300
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6291
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6304
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6305
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 6286
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5326
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 5327
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 5328
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5330
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5331
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5332
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 4586
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_1

    .line 4587
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 4588
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 4590
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableListAccelerate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInAccelerateProcess:Z

    if-eqz v0, :cond_0

    .line 4591
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4592
    const/4 p1, 0x0

    .line 4595
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 4585
    :cond_1
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 4431
    if-eqz p1, :cond_0

    .line 4432
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 4434
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 4430
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2040
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v0, :cond_1

    .line 2039
    :cond_0
    :goto_0
    return-void

    .line 2041
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    goto :goto_0
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1734
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1735
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1736
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1737
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 1733
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2049
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2050
    iput v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2051
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2052
    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2053
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2054
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2055
    iput v2, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2056
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2057
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2058
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2059
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2060
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2061
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2062
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2048
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 5394
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 5396
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 5397
    const/16 v17, 0x0

    return v17

    .line 5400
    :cond_0
    const/4 v13, 0x0

    .line 5402
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 5403
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 5404
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5405
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5406
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 5408
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 5409
    move v12, v14

    .line 5411
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5412
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 5413
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 5416
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    .line 5417
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 5473
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 5474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 5476
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5478
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5479
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 5480
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 5481
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 5482
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 5483
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 5484
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5485
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 5486
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5490
    :goto_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5492
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    :goto_2
    return v17

    .line 5418
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    .line 5419
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    .line 5420
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    .line 5419
    sub-int v13, v17, v18

    goto :goto_0

    .line 5423
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 5425
    move v12, v7

    .line 5426
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 5427
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5428
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5430
    .local v15, "top":I
    if-nez v8, :cond_6

    .line 5432
    move v13, v15

    .line 5434
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 5437
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 5440
    :cond_6
    if-lt v15, v5, :cond_7

    .line 5442
    add-int v12, v7, v8

    .line 5443
    move v13, v15

    .line 5444
    goto/16 :goto_0

    .line 5426
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 5448
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 5449
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 5450
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 5452
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 5453
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5454
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5455
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5457
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 5458
    move v13, v15

    .line 5459
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 5460
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 5464
    :cond_a
    if-gt v2, v4, :cond_b

    .line 5465
    add-int v12, v7, v8

    .line 5466
    move v13, v15

    .line 5467
    goto/16 :goto_0

    .line 5452
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 5488
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_1

    .line 5492
    :cond_d
    const/16 v17, 0x0

    goto :goto_2
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5374
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5375
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5376
    const/4 v0, 0x1

    return v0

    .line 5378
    :cond_0
    return v1
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 5072
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 5071
    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1537
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1538
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1539
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1540
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    .line 1541
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1542
    return-void

    .line 1544
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1545
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1548
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEventInternal(I)V

    .line 1533
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5806
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5807
    return v8

    .line 5810
    :cond_0
    const/4 v2, 0x0

    .line 5811
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 5812
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 5844
    .end local v3    # "okToSend":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 5845
    invoke-direct {p0, v7}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 5847
    move-object v1, p3

    .line 5848
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 5849
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v8}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 5852
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 5853
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 5867
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    .end local v2    # "handled":Z
    :cond_2
    :goto_1
    return v2

    .line 5819
    .restart local v2    # "handled":Z
    .restart local v3    # "okToSend":Z
    :sswitch_0
    const/4 v3, 0x0

    .line 5820
    goto :goto_0

    .line 5822
    :sswitch_1
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5823
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 5824
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_5

    .line 5825
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 5826
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 5827
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 5829
    :cond_3
    const/4 v2, 0x1

    .line 5836
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 5837
    goto :goto_0

    .line 5830
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 5831
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    .line 5830
    if-eqz v5, :cond_4

    .line 5831
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 5832
    const/4 v2, 0x1

    .line 5833
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 5840
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .local v3, "okToSend":Z
    goto :goto_0

    .line 5855
    .end local v3    # "okToSend":Z
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 5859
    .local v2, "handled":Z
    :pswitch_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 5863
    .local v2, "handled":Z
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto :goto_1

    .line 5812
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 5853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 941
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 942
    if-eqz p1, :cond_0

    .line 943
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 944
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 946
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 950
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 954
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 955
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 941
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 6257
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 6258
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 6259
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 6260
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6261
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6263
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6256
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 3
    .param p1, "choiceMode"    # I

    .prologue

    invoke-static/range {p0 .. p1}, Landroid/widget/AbsListView$FlymeInjector;->setFlymeChoiceMode(Landroid/widget/AbsListView;I)I

    move-result p1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1255
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1256
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1258
    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1260
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1261
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1262
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1264
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1265
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1268
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1269
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1254
    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 2818
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 2817
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1379
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1380
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_2

    .line 1384
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 1386
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1387
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1378
    :cond_1
    :goto_1
    return-void

    .line 1381
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 1389
    :cond_3
    new-instance v0, Landroid/widget/AbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1319
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1320
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1322
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1357
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 1358
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    .line 1356
    :goto_0
    return-void

    .line 1360
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 1992
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1990
    :cond_0
    :goto_0
    return-void

    .line 1993
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 1996
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1997
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1998
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 2000
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 2001
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2002
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2006
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2007
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2239
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2243
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2244
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2245
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 2249
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2243
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 4874
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 4875
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4877
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 4873
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1084
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v2, :cond_0

    .line 1085
    return-void

    .line 1089
    :cond_0
    if-eqz p2, :cond_1

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_1

    .line 1090
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_7

    .line 1091
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1096
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1100
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_b

    .line 1101
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 1102
    .local v7, "oldValue":Z
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1103
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1104
    if-eqz p2, :cond_8

    .line 1105
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v11, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1110
    :cond_3
    :goto_0
    if-eq v7, p2, :cond_9

    move v0, v9

    .line 1111
    .local v0, "itemCheckChanged":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1112
    if-eqz p2, :cond_a

    .line 1113
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1118
    :cond_4
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 1119
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1120
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1148
    .end local v0    # "itemCheckChanged":Z
    .end local v4    # "id":J
    .end local v7    # "oldValue":Z
    :cond_5
    :goto_3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_13

    .line 1083
    :cond_6
    :goto_4
    return-void

    .line 1092
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1107
    .restart local v7    # "oldValue":Z
    :cond_8
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 1110
    goto :goto_1

    .line 1115
    .restart local v0    # "itemCheckChanged":Z
    :cond_a
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1124
    .end local v0    # "itemCheckChanged":Z
    .end local v7    # "oldValue":Z
    :cond_b
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    .line 1127
    :goto_5
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p2, :cond_10

    const/4 v0, 0x1

    .line 1128
    .local v0, "itemCheckChanged":Z
    :goto_6
    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1129
    :cond_c
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1130
    if-eqz v8, :cond_d

    .line 1131
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1136
    :cond_d
    if-eqz p2, :cond_11

    .line 1137
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1138
    if-eqz v8, :cond_e

    .line 1139
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1141
    :cond_e
    iput v9, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .line 1124
    .end local v0    # "itemCheckChanged":Z
    :cond_f
    const/4 v8, 0x0

    .local v8, "updateIds":Z
    goto :goto_5

    .line 1127
    .end local v8    # "updateIds":Z
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "itemCheckChanged":Z
    goto :goto_6

    .line 1142
    :cond_11
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1143
    :cond_12
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .line 1148
    .end local v0    # "itemCheckChanged":Z
    :cond_13
    if-eqz v0, :cond_6

    .line 1149
    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1150
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1151
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_4
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 1285
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1286
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1288
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1284
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1514
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1515
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1513
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 924
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 925
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 926
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 927
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 928
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 934
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 923
    return-void

    .line 931
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 932
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 6416
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-set0(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 6415
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6323
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 6324
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6325
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    .line 6326
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    .line 6325
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6327
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6328
    return-void

    .line 6331
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6333
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 6334
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6335
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6320
    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 6349
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 6350
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 6346
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1459
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1460
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 1458
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 2901
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 2902
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 2900
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1656
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1659
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 1655
    return-void

    .line 1657
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 7173
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 7174
    return-void

    .line 7177
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7178
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 7179
    if-ltz p1, :cond_1

    .line 7180
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 7186
    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    .line 7187
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 7188
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 7190
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_2

    .line 7191
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 7192
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 7195
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    .line 7196
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7198
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 7172
    :cond_4
    return-void

    .line 7183
    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 2829
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2828
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    invoke-static/range {p0 .. p0}, Landroid/widget/AbsListView$FlymeInjector;->setFlymeSelector(Landroid/widget/AbsListView;)V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1493
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 1492
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 1727
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 1728
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 1729
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1726
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 1673
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 1672
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 6228
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 6227
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 4887
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 4886
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1451
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 1452
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 1450
    :cond_0
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 6399
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 6400
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 6398
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 2797
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3314
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3319
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3345
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShowingContextMenuWithCoords()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3346
    return v2

    .line 3348
    :cond_0
    invoke-direct {p0, p1, v1, v1, v2}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 3353
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 4969
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 4968
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 8
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v7, 0x0

    .line 4973
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 4974
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 4978
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 4979
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4980
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 4981
    .local v3, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 4982
    .local v4, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 4984
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_1

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-nez v5, :cond_3

    .line 4988
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4989
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_2

    .line 4990
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4972
    :cond_2
    :goto_0
    return-void

    .line 4984
    :cond_3
    if-eqz v1, :cond_1

    .line 4985
    if-nez v2, :cond_4

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_4

    if-ltz p1, :cond_1

    .line 4986
    :cond_4
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v3, v5, :cond_5

    .line 4987
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_5

    if-gtz p1, :cond_1

    .line 4993
    :cond_5
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4994
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/high16 v10, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    .line 5002
    const/4 v2, -0x1

    .line 5003
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 5004
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 5009
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 5010
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5011
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 5012
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5013
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5015
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 5016
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 5017
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 5018
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 5019
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v10

    if-gez v7, :cond_4

    .line 5022
    add-int/lit8 v2, v2, 0x1

    .line 5029
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v7

    add-int v8, v2, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 5001
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 5005
    :cond_3
    if-lez p1, :cond_0

    .line 5006
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 5023
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v10

    if-gez v7, :cond_1

    .line 5026
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4903
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 4904
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 4906
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 4902
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 4957
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 4958
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 4960
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 4956
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 4940
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 4941
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 4943
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 4939
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 4922
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 4923
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 4925
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 4921
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 2780
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 2785
    const/4 v0, 0x0

    return v0

    .line 2783
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2780
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 5111
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 5112
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 5113
    const/16 v29, 0x1

    return v29

    .line 5116
    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    .line 5117
    .local v16, "firstTop":I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 5119
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 5124
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 5125
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 5126
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 5127
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 5128
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 5132
    :cond_1
    sub-int v25, v13, v16

    .line 5133
    .local v25, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v14, v29, v12

    .line 5134
    .local v14, "end":I
    sub-int v26, v22, v14

    .line 5136
    .local v26, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    .line 5137
    .local v19, "height":I
    if-gez p1, :cond_3

    .line 5138
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5143
    :goto_0
    if-gez p2, :cond_4

    .line 5144
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5149
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5152
    .local v15, "firstPosition":I
    if-nez v15, :cond_5

    .line 5153
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 5157
    :goto_2
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 5158
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 5163
    :goto_3
    if-nez v15, :cond_8

    .line 5164
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 5165
    .local v5, "cannotScrollDown":Z
    :goto_4
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    .line 5166
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_a

    if-gtz p2, :cond_9

    const/4 v6, 0x1

    .line 5168
    .local v6, "cannotScrollUp":Z
    :goto_5
    if-nez v5, :cond_2

    if-eqz v6, :cond_c

    .line 5169
    :cond_2
    if-eqz p2, :cond_b

    const/16 v29, 0x1

    :goto_6
    return v29

    .line 5140
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_3
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_0

    .line 5146
    :cond_4
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_1

    .line 5155
    .restart local v15    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_2

    .line 5160
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_3

    .line 5164
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "cannotScrollDown":Z
    goto :goto_4

    .line 5163
    .end local v5    # "cannotScrollDown":Z
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "cannotScrollDown":Z
    goto :goto_4

    .line 5166
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "cannotScrollUp":Z
    goto :goto_5

    .line 5165
    .end local v6    # "cannotScrollUp":Z
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "cannotScrollUp":Z
    goto :goto_5

    .line 5169
    :cond_b
    const/16 v29, 0x0

    goto :goto_6

    .line 5172
    :cond_c
    if-gez p2, :cond_16

    const/4 v11, 0x1

    .line 5174
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v21

    .line 5175
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_d

    .line 5176
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 5179
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 5180
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 5182
    .local v17, "footerViewsStart":I
    const/16 v27, 0x0

    .line 5183
    .local v27, "start":I
    const/4 v10, 0x0

    .line 5185
    .local v10, "count":I
    if-eqz v11, :cond_19

    .line 5186
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    .line 5187
    .local v28, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 5188
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 5190
    :cond_e
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_f

    .line 5191
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5192
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_17

    .line 5228
    .end local v7    # "child":Landroid/view/View;
    .end local v28    # "top":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 5230
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5232
    if-lez v10, :cond_10

    .line 5233
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 5234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 5239
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v29

    if-nez v29, :cond_11

    .line 5240
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5243
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5245
    if-eqz v11, :cond_12

    .line 5246
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5249
    :cond_12
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5250
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v25

    if-le v0, v3, :cond_13

    move/from16 v0, v26

    if-ge v0, v3, :cond_14

    .line 5251
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 5254
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 5255
    if-nez v21, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1c

    .line 5256
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 5257
    .local v9, "childIndex":I
    if-ltz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_15

    .line 5258
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5269
    .end local v9    # "childIndex":I
    :cond_15
    :goto_9

    invoke-static/range {p0 .. p2}, Landroid/widget/AbsListView$FlymeInjector;->mzTrackMotionScroll(Landroid/widget/AbsListView;II)V

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 5271
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 5273
    const/16 v29, 0x0

    return v29

    .line 5172
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v27    # "start":I
    :cond_16
    const/4 v11, 0x0

    .restart local v11    # "down":Z
    goto/16 :goto_7

    .line 5195
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v27    # "start":I
    .restart local v28    # "top":I
    :cond_17
    add-int/lit8 v10, v10, 0x1

    .line 5196
    add-int v24, v15, v20

    .line 5197
    .local v24, "position":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_18

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_18

    .line 5200
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5190
    :cond_18
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 5206
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v24    # "position":I
    .end local v28    # "top":I
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v4, v29, p2

    .line 5207
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    .line 5208
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    .line 5210
    :cond_1a
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_a
    if-ltz v20, :cond_f

    .line 5211
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5212
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_f

    .line 5215
    move/from16 v27, v20

    .line 5216
    add-int/lit8 v10, v10, 0x1

    .line 5217
    add-int v24, v15, v20

    .line 5218
    .restart local v24    # "position":I
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1b

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_1b

    .line 5221
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 5222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5210
    :cond_1b
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    .line 5260
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v24    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1d

    .line 5261
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 5262
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_15

    .line 5263
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 5266
    .end local v9    # "childIndex":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method updateScrollIndicators()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2278
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2279
    iget-object v3, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2282
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2283
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2277
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2279
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2283
    goto :goto_1
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 2906
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2907
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2908
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2909
    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2910
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2905
    :cond_0
    :goto_0
    return-void

    .line 2913
    :cond_1
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2961
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchStatusBarTap()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/AbsListView;->onStatusBarTapScrollTop()Z

    move-result v0

    return v0
.end method

.method public finishMultiChoice()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method flymeGetFieldContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method flymeGetFieldScrollY()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method public getItemDragListener()Landroid/widget/AbsListView$OnItemDragListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    return-object v0
.end method

.method public getOverScrollDistance()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    return v0
.end method

.method public isDelayTopOverScrollEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isEnableLoadAllItems()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFlymeEnableLoadAllItems:Z

    return v0
.end method

.method protected mzCanOverScroll()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .local v0, "overscrollMode":I
    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    return v3
.end method

.method protected mzCanScrollSelect(I)Z
    .locals 11
    .param p1, "motionY"    # I

    .prologue
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .local v4, "childCount":I
    if-lez v4, :cond_8

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v7, Landroid/graphics/Rect;->top:I

    .local v6, "listTop":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v7, v8

    .local v5, "listBottom":I
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v7, :cond_0

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-lt v7, v8, :cond_0

    const/4 v2, 0x1

    .local v2, "atListTop":Z
    :goto_0
    iget v7, p0, Landroid/widget/AbsListView;->mListItemHeight:I

    add-int/2addr v7, v6

    if-ge p1, v7, :cond_1

    const/4 v3, 0x1

    .local v3, "atTopRegion":Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    return v10

    .end local v2    # "atListTop":Z
    .end local v3    # "atTopRegion":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "atListTop":Z
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "atTopRegion":Z
    goto :goto_1

    :cond_2
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_4

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_3

    const/4 v1, 0x1

    .local v1, "atListBottom":Z
    :goto_2
    iget v7, p0, Landroid/widget/AbsListView;->mListItemHeight:I

    sub-int v7, v5, v7

    if-le p1, v7, :cond_5

    const/4 v0, 0x1

    .local v0, "atBottomRegion":Z
    :goto_3
    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    return v10

    .end local v0    # "atBottomRegion":Z
    .end local v1    # "atListBottom":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "atListBottom":Z
    goto :goto_2

    .end local v1    # "atListBottom":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "atListBottom":Z
    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "atBottomRegion":Z
    goto :goto_3

    :cond_6
    if-nez v3, :cond_7

    .end local v0    # "atBottomRegion":Z
    :goto_4
    return v0

    .restart local v0    # "atBottomRegion":Z
    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    .end local v0    # "atBottomRegion":Z
    .end local v1    # "atListBottom":Z
    .end local v2    # "atListTop":Z
    .end local v3    # "atTopRegion":Z
    .end local v5    # "listBottom":I
    .end local v6    # "listTop":I
    :cond_8
    return v10
.end method

.method protected mzCreateScrollingCache()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    return-void
.end method

.method mzEnsureCheckRegion(Z)V
    .locals 3
    .param p1, "forceUpdate"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/widget/AbsListView;->mDefaultCheckWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_3
    return-void
.end method

.method protected mzIsChildOutOfBounds(Landroid/view/View;II)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gt v1, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-lt v1, p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mzIsHeaderOrFooter(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v2

    if-lt p1, v2, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected mzIsItemSelectable(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v1, p1

    .local v1, "pos":I
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v1, p1, v2

    :cond_0
    instance-of v2, v0, Lcom/meizu/widget/ListSelectFilter;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/meizu/widget/ListSelectFilter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, v1}, Lcom/meizu/widget/ListSelectFilter;->isSelectable(I)Z

    move-result v2

    return v2

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_1
    if-nez v0, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    return v2
.end method

.method mzOnCreateActionMode(Landroid/view/ActionMode;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method mzOnDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v2}, Landroid/view/ActionMode;->setBackPressListener(Landroid/view/ActionMode$BackPressedListener;)V

    :cond_0
    return-void
.end method

.method protected mzPerformClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .local v0, "motionPosition":I
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->mzIsHeaderOrFooter(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->mzIsItemSelectable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .local v8, "count":I
    const/4 v7, 0x0

    .local v7, "contentFits":Z
    if-nez v8, :cond_0

    const/4 v7, 0x1

    :goto_0
    if-eqz v7, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-super/range {v0 .. v6}, Landroid/widget/AdapterView;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eq v8, v0, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    invoke-super/range {p0 .. p6}, Landroid/widget/AdapterView;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_1
.end method

.method protected onStatusBarTapScrollTop()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-lt v1, v2, :cond_1

    return v3

    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    return v3

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    iput-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_3
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    const/4 v1, 0x1

    return v1
.end method

.method protected performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "flag":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .local v0, "flag":Z
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .end local v0    # "flag":Z
    :cond_0
    return v0
.end method

.method protected performItemLongPress(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public setDelayTopOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    return-void
.end method

.method public setDelayTopOverScrollOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    return-void
.end method

.method public setEnableForEditTextPreference(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mEnableForEditTextPreference:Z

    return-void
.end method

.method public setEnableHoldPress(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mEnableHoldPress:Z

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableHoldPress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Landroid/widget/AbsListView$FlymeInjector;->getHoldBackground(Landroid/widget/AbsListView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEnableLoadAllItems(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFlymeEnableLoadAllItems:Z

    return-void
.end method

.method public setEnableOverScroll(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFlymeEnableOverScroll:Z

    return-void
.end method

.method public setEnablePressStateOnCheck(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFlymeEnablePressStateOnCheck:Z

    return-void
.end method

.method public setItemDragListener(Landroid/widget/AbsListView$OnItemDragListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnItemDragListener;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsListView;->mItemDragListener:Landroid/widget/AbsListView$OnItemDragListener;

    return-void
.end method

.method public setOnTouchOutOfItemListener(Landroid/widget/AbsListView$onTouchOutOfItemListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$onTouchOutOfItemListener;

    .prologue
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnTouchOutOfItemListener:Landroid/widget/AbsListView$onTouchOutOfItemListener;

    return-void
.end method

.method public startMultiChoice()Z
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceModeMZ:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getBackPressListener()Landroid/view/ActionMode$BackPressedListener;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    new-instance v1, Landroid/widget/AbsListView$FlymeInjector$FlymeBackPressedListener;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlymeInjector$FlymeBackPressedListener;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setBackPressListener(Landroid/view/ActionMode$BackPressedListener;)V

    :cond_2
    new-instance v0, Landroid/widget/AbsListView$FlymeInjector$FlymeMultiChoiceRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlymeInjector$FlymeMultiChoiceRunnable;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method