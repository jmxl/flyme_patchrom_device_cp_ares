.class public Landroid/widget/PressGestureDetector;
.super Ljava/lang/Object;
.source "PressGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PressGestureDetector$TextBoom;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "PressGestureDetector"

.field private static final TEXTBOOM_PKG_NAME:Ljava/lang/String; = "com.journeyui.textboom"

.field private static final TOUCH_MOVE_BOUND:F = 80.0f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDecorView:Landroid/widget/FrameLayout;

.field private mFindViewRestricted:Z

.field private mIsCtrlKeyPressTrigger:Z

.field private mIsHomeKeyPressTrigger:Z

.field private mLongPressDownX:F

.field private mLongPressDownY:F

.field private final mTextBoom:Landroid/widget/PressGestureDetector$TextBoom;

.field private mTextBoomEntered:Z

.field private mTouchPointerID:I

.field private final mTouchSlop:I

.field private mTouchedTextView:Landroid/view/View;

.field private mWebViewText:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/widget/PressGestureDetector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/PressGestureDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/PressGestureDetector;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Landroid/widget/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/PressGestureDetector;)F
    .locals 1

    iget v0, p0, Landroid/widget/PressGestureDetector;->mLongPressDownX:F

    return v0
.end method

.method static synthetic -get3(Landroid/widget/PressGestureDetector;)F
    .locals 1

    iget v0, p0, Landroid/widget/PressGestureDetector;->mLongPressDownY:F

    return v0
.end method

.method static synthetic -get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/PressGestureDetector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PressGestureDetector;->mWebViewText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/PressGestureDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PressGestureDetector;->mTextBoomEntered:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/PressGestureDetector;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set2(Landroid/widget/PressGestureDetector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/widget/PressGestureDetector;->mWebViewText:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "docerView"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v0, p0, Landroid/widget/PressGestureDetector;->mLongPressDownX:F

    .line 75
    iput v0, p0, Landroid/widget/PressGestureDetector;->mLongPressDownY:F

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/PressGestureDetector;->mTouchPointerID:I

    .line 78
    iput-object v2, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    .line 79
    iput-boolean v1, p0, Landroid/widget/PressGestureDetector;->mIsHomeKeyPressTrigger:Z

    .line 80
    iput-boolean v1, p0, Landroid/widget/PressGestureDetector;->mIsCtrlKeyPressTrigger:Z

    .line 81
    iput-boolean v1, p0, Landroid/widget/PressGestureDetector;->mTextBoomEntered:Z

    .line 86
    iput-object p1, p0, Landroid/widget/PressGestureDetector;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Landroid/widget/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    .line 88
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/widget/PressGestureDetector;->mTouchSlop:I

    .line 89
    new-instance v0, Landroid/widget/PressGestureDetector$TextBoom;

    invoke-direct {v0, p0, v2}, Landroid/widget/PressGestureDetector$TextBoom;-><init>(Landroid/widget/PressGestureDetector;Landroid/widget/PressGestureDetector$TextBoom;)V

    iput-object v0, p0, Landroid/widget/PressGestureDetector;->mTextBoom:Landroid/widget/PressGestureDetector$TextBoom;

    .line 84
    return-void
.end method

.method private canTextBoom()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 545
    iget-object v3, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    .line 546
    iget-object v3, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    return v5

    .line 547
    :cond_0
    iget-object v3, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    instance-of v1, v3, Landroid/widget/TextView;

    .line 548
    .local v1, "isTextView":Z
    if-eqz v1, :cond_2

    .line 549
    iget-object v3, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTrimmedFoundText()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "foundText":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 551
    :cond_1
    return v5

    .line 554
    .end local v0    # "foundText":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_5

    .line 555
    iget-object v3, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    and-int/lit16 v2, v3, 0xfff

    .line 557
    .local v2, "variation":I
    const/16 v3, 0x81

    if-eq v2, v3, :cond_4

    .line 558
    const/16 v3, 0xe1

    if-eq v2, v3, :cond_4

    .line 559
    const/16 v3, 0x12

    if-eq v2, v3, :cond_3

    move v3, v4

    .line 557
    :goto_0
    return v3

    :cond_3
    move v3, v5

    .line 559
    goto :goto_0

    :cond_4
    move v3, v5

    .line 557
    goto :goto_0

    .line 562
    .end local v2    # "variation":I
    :cond_5
    iget-object v3, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    instance-of v3, v3, Landroid/webkit/WebView;

    if-nez v3, :cond_6

    .line 563
    const-string/jumbo v3, "org.chromium.content.browser.ContentView"

    iget-object v5, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 562
    if-eqz v3, :cond_7

    .line 564
    :cond_6
    const-string/jumbo v3, "PressGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Found webview ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v3, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    check-cast v3, Landroid/webkit/WebView;

    new-instance v5, Landroid/widget/PressGestureDetector$1;

    invoke-direct {v5, p0}, Landroid/widget/PressGestureDetector$1;-><init>(Landroid/widget/PressGestureDetector;)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 573
    const-string/jumbo v3, "PressGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "webview x is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWebViewPointX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string/jumbo v3, "PressGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "webview y is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWebViewPointY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v3, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWebViewPointX()F

    move-result v3

    iget-object v5, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWebViewPointY()F

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/widget/PressGestureDetector;->getTextContentsAtPos(FF)V

    .line 578
    :cond_7
    return v4

    .line 580
    .end local v1    # "isTextView":Z
    :cond_8
    return v5
.end method

.method private matchPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 591
    iget-object v0, p0, Landroid/widget/PressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeCallbacks()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Landroid/widget/PressGestureDetector;->mTextBoom:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-virtual {v0}, Landroid/widget/PressGestureDetector$TextBoom;->stopTextBoom()V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    .line 583
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x42a00000    # 80.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 152
    iget-boolean v6, p0, Landroid/widget/PressGestureDetector;->mFindViewRestricted:Z

    if-eqz v6, :cond_0

    .line 153
    return v8

    .line 155
    :cond_0
    iget-object v6, p0, Landroid/widget/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    iget-object v9, p0, Landroid/widget/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v9

    if-ne v6, v9, :cond_a

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 157
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    .line 158
    .local v2, "actionMasked":I
    packed-switch v2, :pswitch_data_0

    .line 213
    .end local v0    # "action":I
    .end local v2    # "actionMasked":I
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v6, p0, Landroid/widget/PressGestureDetector;->mTextBoomEntered:Z

    if-eqz v6, :cond_b

    .line 214
    return v7

    .line 160
    .restart local v0    # "action":I
    .restart local v2    # "actionMasked":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 161
    .local v1, "actionIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Landroid/widget/PressGestureDetector;->mTouchPointerID:I

    .line 162
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Landroid/widget/PressGestureDetector;->mLongPressDownX:F

    .line 163
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iput v6, p0, Landroid/widget/PressGestureDetector;->mLongPressDownY:F

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_3

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Landroid/widget/PressGestureDetector;->mIsCtrlKeyPressTrigger:Z

    .line 166
    iget-boolean v6, p0, Landroid/widget/PressGestureDetector;->mIsHomeKeyPressTrigger:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Landroid/widget/PressGestureDetector;->mIsCtrlKeyPressTrigger:Z

    if-eqz v6, :cond_6

    .line 167
    :cond_2
    iget-object v6, p0, Landroid/widget/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    iget v9, p0, Landroid/widget/PressGestureDetector;->mLongPressDownX:F

    iget v10, p0, Landroid/widget/PressGestureDetector;->mLongPressDownY:F

    invoke-virtual {v6, v9, v10}, Landroid/view/ViewGroup;->dispatchFindTextView(FF)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    .line 168
    iget-boolean v6, p0, Landroid/widget/PressGestureDetector;->mIsCtrlKeyPressTrigger:Z

    if-eqz v6, :cond_4

    .line 169
    iput-boolean v7, p0, Landroid/widget/PressGestureDetector;->mTextBoomEntered:Z

    goto :goto_0

    :cond_3
    move v6, v8

    .line 165
    goto :goto_1

    .line 170
    :cond_4
    iget-boolean v6, p0, Landroid/widget/PressGestureDetector;->mIsHomeKeyPressTrigger:Z

    if-eqz v6, :cond_1

    .line 171
    invoke-direct {p0}, Landroid/widget/PressGestureDetector;->canTextBoom()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 172
    iput-boolean v7, p0, Landroid/widget/PressGestureDetector;->mTextBoomEntered:Z

    .line 173
    iget-object v6, p0, Landroid/widget/PressGestureDetector;->mTextBoom:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-virtual {v6}, Landroid/widget/PressGestureDetector$TextBoom;->prepareTextBoom()V

    goto :goto_0

    .line 175
    :cond_5
    iput-boolean v8, p0, Landroid/widget/PressGestureDetector;->mTextBoomEntered:Z

    goto :goto_0

    .line 179
    :cond_6
    iput-boolean v8, p0, Landroid/widget/PressGestureDetector;->mTextBoomEntered:Z

    goto :goto_0

    .line 184
    .end local v1    # "actionIndex":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 185
    .restart local v1    # "actionIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 186
    .local v3, "pointerID":I
    iget v6, p0, Landroid/widget/PressGestureDetector;->mTouchPointerID:I

    if-ne v3, v6, :cond_1

    .line 189
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 190
    .local v4, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 191
    .local v5, "y":F
    iget-object v6, p0, Landroid/widget/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    iget v9, p0, Landroid/widget/PressGestureDetector;->mTouchSlop:I

    int-to-float v9, v9

    invoke-virtual {v6, v4, v5, v9}, Landroid/view/View;->pointInView(FFF)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 192
    iget v6, p0, Landroid/widget/PressGestureDetector;->mLongPressDownX:F

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_9

    .line 194
    :cond_7
    :goto_2
    iget-object v6, p0, Landroid/widget/PressGestureDetector;->mTextBoom:Landroid/widget/PressGestureDetector$TextBoom;

    iget-boolean v6, v6, Landroid/widget/PressGestureDetector$TextBoom;->preparing:Z

    if-eqz v6, :cond_8

    .line 195
    const-string/jumbo v6, "PressGestureDetector"

    const-string/jumbo v9, "Move to stop text boom"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_8
    invoke-direct {p0}, Landroid/widget/PressGestureDetector;->removeCallbacks()V

    goto/16 :goto_0

    .line 193
    :cond_9
    iget v6, p0, Landroid/widget/PressGestureDetector;->mLongPressDownY:F

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_1

    goto :goto_2

    .line 210
    .end local v0    # "action":I
    .end local v1    # "actionIndex":I
    .end local v2    # "actionMasked":I
    .end local v3    # "pointerID":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_a
    const-string/jumbo v6, "PressGestureDetector"

    const-string/jumbo v9, "mDecorView.getParent() != mDecorView.getViewRootImpl()"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0}, Landroid/widget/PressGestureDetector;->removeCallbacks()V

    goto/16 :goto_0

    .line 216
    :cond_b
    return v8

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getTextContentsAtPos(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 596
    iget-object v4, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    check-cast v4, Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWebViewProvider()Landroid/webkit/WebViewProvider;

    move-result-object v3

    .line 597
    .local v3, "provider":Landroid/webkit/WebViewProvider;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 599
    .local v0, "clientClazz":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v4, "getTextContentsAtPos"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 600
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PressGestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTextContentsAtPos failed, e is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleBackKey()V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Landroid/widget/PressGestureDetector;->mFindViewRestricted:Z

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Landroid/widget/PressGestureDetector;->removeCallbacks()V

    .line 143
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 2

    .prologue
    .line 128
    const-string/jumbo v0, "com.journeyui.textboom"

    invoke-direct {p0, v0}, Landroid/widget/PressGestureDetector;->matchPackage(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/PressGestureDetector;->mFindViewRestricted:Z

    .line 129
    iget-boolean v0, p0, Landroid/widget/PressGestureDetector;->mFindViewRestricted:Z

    if-eqz v0, :cond_0

    .line 130
    const-string/jumbo v0, "PressGestureDetector"

    const-string/jumbo v1, "mFindViewRestricted TEXTBOOM_PKG_NAME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/widget/PressGestureDetector;->mTextBoom:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-virtual {v0}, Landroid/widget/PressGestureDetector$TextBoom;->registerObserver()V

    .line 126
    return-void
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Landroid/widget/PressGestureDetector;->mFindViewRestricted:Z

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Landroid/widget/PressGestureDetector;->removeCallbacks()V

    .line 140
    iget-object v0, p0, Landroid/widget/PressGestureDetector;->mTextBoom:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-virtual {v0}, Landroid/widget/PressGestureDetector$TextBoom;->unregisterObserver()V

    .line 136
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 118
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/PressGestureDetector;->mIsCtrlKeyPressTrigger:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/PressGestureDetector;->mTextBoomEntered:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Landroid/widget/PressGestureDetector;->canTextBoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PressGestureDetector;->mTextBoomEntered:Z

    .line 121
    iget-object v0, p0, Landroid/widget/PressGestureDetector;->mTextBoom:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-virtual {v0}, Landroid/widget/PressGestureDetector$TextBoom;->prepareTextBoom()V

    .line 117
    :cond_0
    return-void
.end method

.method public showSharedDock(ILandroid/content/ClipData;)V
    .locals 0
    .param p1, "side"    # I
    .param p2, "clipData"    # Landroid/content/ClipData;

    .prologue
    .line 109
    return-void
.end method

.method public startTextBoom(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-boolean v0, p0, Landroid/widget/PressGestureDetector;->mFindViewRestricted:Z

    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v0, "PressGestureDetector"

    const-string/jumbo v1, "mFindViewRestricted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Landroid/widget/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 98
    iput p1, p0, Landroid/widget/PressGestureDetector;->mLongPressDownX:F

    .line 99
    iput p2, p0, Landroid/widget/PressGestureDetector;->mLongPressDownY:F

    .line 100
    iget-object v0, p0, Landroid/widget/PressGestureDetector;->mDecorView:Landroid/widget/FrameLayout;

    iget v1, p0, Landroid/widget/PressGestureDetector;->mLongPressDownX:F

    iget v2, p0, Landroid/widget/PressGestureDetector;->mLongPressDownY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->dispatchFindTextView(FF)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PressGestureDetector;->mTouchedTextView:Landroid/view/View;

    .line 101
    iput-boolean v3, p0, Landroid/widget/PressGestureDetector;->mIsCtrlKeyPressTrigger:Z

    .line 102
    iput-boolean v3, p0, Landroid/widget/PressGestureDetector;->mTextBoomEntered:Z

    .line 92
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string/jumbo v0, "PressGestureDetector"

    const-string/jumbo v1, "mDecorView.getParent() != mDecorView.getViewRootImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Landroid/widget/PressGestureDetector;->removeCallbacks()V

    goto :goto_0
.end method
