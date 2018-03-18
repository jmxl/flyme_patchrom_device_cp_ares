.class Landroid/widget/PressGestureDetector$TextBoom;
.super Ljava/lang/Object;
.source "PressGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PressGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextBoom"
.end annotation


# static fields
.field private static final CIRCLE_END_SCALE:F = 15.0f

.field private static final CIRCLE_START_SCALE:F = 0.4f

.field private static final LOOP_END_SCALE:F = 0.4f

.field private static final LOOP_START_SCALE:F = 2.0f


# instance fields
.field private mBoomIndictor:Landroid/widget/FrameLayout;

.field private mCircleView:Landroid/widget/ImageView;

.field private mLoopAnimator:Landroid/animation/AnimatorSet;

.field private mLoopView:Landroid/widget/ImageView;

.field public preparing:Z

.field final synthetic this$0:Landroid/widget/PressGestureDetector;


# direct methods
.method static synthetic -get0(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/PressGestureDetector$TextBoom;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PressGestureDetector$TextBoom;->startCircleAnimation()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/PressGestureDetector$TextBoom;II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/PressGestureDetector$TextBoom;->startTextBoom(II)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/PressGestureDetector;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/PressGestureDetector;

    .prologue
    .line 219
    iput-object p1, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->preparing:Z

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/PressGestureDetector;Landroid/widget/PressGestureDetector$TextBoom;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/PressGestureDetector;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/PressGestureDetector$TextBoom;-><init>(Landroid/widget/PressGestureDetector;)V

    return-void
.end method

.method private addIndicator()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x2

    const/high16 v3, 0x41700000    # 15.0f

    const v2, 0x3ecccccd    # 0.4f

    .line 257
    const v1, 0x10800d3

    invoke-direct {p0, v1}, Landroid/widget/PressGestureDetector$TextBoom;->createImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    .line 258
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 260
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 261
    const v1, 0x10800d2

    invoke-direct {p0, v1}, Landroid/widget/PressGestureDetector$TextBoom;->createImageView(I)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    .line 262
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 264
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 265
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v2}, Landroid/widget/PressGestureDetector;->-get0(Landroid/widget/PressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mBoomIndictor:Landroid/widget/FrameLayout;

    .line 266
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 269
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 270
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mBoomIndictor:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mBoomIndictor:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mBoomIndictor:Landroid/widget/FrameLayout;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 273
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mBoomIndictor:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v1}, Landroid/widget/PressGestureDetector;->-get1(Landroid/widget/PressGestureDetector;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom;->mBoomIndictor:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    return-void
.end method

.method private createImageView(I)Landroid/widget/ImageView;
    .locals 5
    .param p1, "drawableRes"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 245
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v2}, Landroid/widget/PressGestureDetector;->-get0(Landroid/widget/PressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 246
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v2}, Landroid/widget/PressGestureDetector;->-get0(Landroid/widget/PressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 249
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 250
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 248
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 251
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 252
    return-object v1
.end method

.method private removeIndicator()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v0}, Landroid/widget/PressGestureDetector;->-get1(Landroid/widget/PressGestureDetector;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 280
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v0}, Landroid/widget/PressGestureDetector;->-get1(Landroid/widget/PressGestureDetector;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 277
    return-void
.end method

.method private startCircleAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 396
    iget-object v4, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v9

    const/4 v7, 0x0

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 397
    .local v0, "alpha":Landroid/animation/Animator;
    iget-object v4, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 398
    .local v1, "scaleX":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 399
    .local v2, "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 400
    .local v3, "set":Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 401
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v9

    aput-object v1, v4, v10

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 403
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 404
    new-instance v4, Landroid/widget/PressGestureDetector$TextBoom$3;

    invoke-direct {v4, p0}, Landroid/widget/PressGestureDetector$TextBoom$3;-><init>(Landroid/widget/PressGestureDetector$TextBoom;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 394
    return-void

    .line 397
    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x41700000    # 15.0f
    .end array-data

    .line 398
    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x41700000    # 15.0f
    .end array-data
.end method

.method private startLoopAnimation()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x12c

    const-wide/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 313
    iget-object v3, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopAnimator:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_0

    .line 314
    iget-object v3, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 315
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/widget/PressGestureDetector$TextBoom$1;

    invoke-direct {v3, p0}, Landroid/widget/PressGestureDetector$TextBoom$1;-><init>(Landroid/widget/PressGestureDetector$TextBoom;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 347
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 348
    iget-object v3, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 349
    .local v1, "scaleX":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 350
    .local v2, "scaleY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 351
    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 352
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopAnimator:Landroid/animation/AnimatorSet;

    .line 353
    iget-object v3, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 354
    iget-object v3, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 355
    iget-object v3, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    aput-object v2, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 356
    iget-object v3, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/widget/PressGestureDetector$TextBoom$2;

    invoke-direct {v4, p0}, Landroid/widget/PressGestureDetector$TextBoom$2;-><init>(Landroid/widget/PressGestureDetector$TextBoom;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 388
    .end local v0    # "alphaAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "scaleX":Landroid/animation/ObjectAnimator;
    .end local v2    # "scaleY":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v3, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 390
    const-string/jumbo v3, "PressGestureDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start loop, time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 348
    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 349
    :array_1
    .array-data 4
        0x40000000    # 2.0f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method private startPreparingTextBoom()V
    .locals 6

    .prologue
    .line 474
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.journeyui.textboom"

    const-string/jumbo v3, "com.journeyui.textboom.BoomPreparingActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 477
    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v2}, Landroid/widget/PressGestureDetector;->-get0(Landroid/widget/PressGestureDetector;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v3}, Landroid/widget/PressGestureDetector;->-get0(Landroid/widget/PressGestureDetector;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "PressGestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startTextBoom(II)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 485
    const-string/jumbo v7, "PressGestureDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startTextBoom x="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " y="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iput-boolean v10, p0, Landroid/widget/PressGestureDetector$TextBoom;->preparing:Z

    .line 488
    :try_start_0
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_0

    .line 489
    const-string/jumbo v7, "PressGestureDetector"

    const-string/jumbo v8, "Don\'t start boom, mTouchedTextView has been reset to null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void

    .line 492
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 493
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 494
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 497
    :cond_1
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v7

    instance-of v4, v7, Landroid/widget/TextView;

    .line 498
    .local v4, "isTextView":Z
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Landroid/webkit/WebView;

    if-nez v7, :cond_2

    .line 499
    const-string/jumbo v7, "org.chromium.content.browser.ContentView"

    iget-object v8, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v8}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 501
    :goto_0
    if-eqz v4, :cond_3

    .line 502
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTrimmedFoundText()Ljava/lang/String;

    move-result-object v6

    .line 503
    .local v6, "text":Ljava/lang/String;
    const-string/jumbo v7, "PressGestureDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TextView text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_1
    if-nez v6, :cond_5

    .line 511
    const-string/jumbo v7, "PressGestureDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Null text for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v9}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "isTextView":Z
    .end local v6    # "text":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7, v10}, Landroid/widget/PressGestureDetector;->-set0(Landroid/widget/PressGestureDetector;Z)Z

    .line 538
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7, v11}, Landroid/widget/PressGestureDetector;->-set1(Landroid/widget/PressGestureDetector;Landroid/view/View;)Landroid/view/View;

    .line 539
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7, v11}, Landroid/widget/PressGestureDetector;->-set2(Landroid/widget/PressGestureDetector;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    return-void

    .line 498
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v4    # "isTextView":Z
    :cond_2
    const/4 v5, 0x1

    .local v5, "isWebView":Z
    goto :goto_0

    .line 504
    .end local v5    # "isWebView":Z
    :cond_3
    if-eqz v5, :cond_4

    .line 505
    :try_start_1
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7}, Landroid/widget/PressGestureDetector;->-get5(Landroid/widget/PressGestureDetector;)Ljava/lang/String;

    move-result-object v6

    .line 506
    .restart local v6    # "text":Ljava/lang/String;
    const-string/jumbo v7, "PressGestureDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "WebView text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 534
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "isTextView":Z
    .end local v6    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "PressGestureDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 508
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v4    # "isTextView":Z
    :cond_4
    :try_start_2
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getFindText()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "text":Ljava/lang/String;
    goto :goto_1

    .line 513
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 514
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.journeyui.textboom"

    const-string/jumbo v8, "com.journeyui.textboom.BoomActivity"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string/jumbo v7, "android.intent.extra.TEXT"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string/jumbo v7, "boom_startx"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string/jumbo v7, "boom_starty"

    invoke-virtual {v3, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    const-string/jumbo v7, "boom_index"

    iget-object v8, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v8}, Landroid/widget/PressGestureDetector;->-get4(Landroid/widget/PressGestureDetector;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getFindTextIndex()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string/jumbo v7, "caller_pkg"

    iget-object v8, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v8}, Landroid/widget/PressGestureDetector;->-get0(Landroid/widget/PressGestureDetector;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const/high16 v7, 0x200000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 521
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7}, Landroid/widget/PressGestureDetector;->-get0(Landroid/widget/PressGestureDetector;)Landroid/content/Context;

    move-result-object v0

    .line 522
    .local v0, "context":Landroid/content/Context;
    instance-of v7, v0, Landroid/app/Activity;

    if-nez v7, :cond_6

    .line 523
    instance-of v7, v0, Landroid/content/ContextWrapper;

    if-eqz v7, :cond_7

    .line 524
    nop

    nop

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 525
    .restart local v0    # "context":Landroid/content/Context;
    instance-of v7, v0, Landroid/app/Activity;

    if-nez v7, :cond_6

    .line 526
    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 532
    :cond_6
    :goto_3
    iget-object v7, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v7}, Landroid/widget/PressGestureDetector;->-get0(Landroid/widget/PressGestureDetector;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    .line 529
    :cond_7
    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public prepareTextBoom()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    const-string/jumbo v0, "PressGestureDetector"

    const-string/jumbo v1, "prepareTextBoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->mBoomIndictor:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->preparing:Z

    .line 289
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->mBoomIndictor:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 290
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->mBoomIndictor:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 304
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v1}, Landroid/widget/PressGestureDetector;->-get2(Landroid/widget/PressGestureDetector;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 306
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v1}, Landroid/widget/PressGestureDetector;->-get3(Landroid/widget/PressGestureDetector;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 307
    invoke-direct {p0}, Landroid/widget/PressGestureDetector$TextBoom;->startCircleAnimation()V

    .line 283
    return-void
.end method

.method public registerObserver()V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v1}, Landroid/widget/PressGestureDetector;->-get0(Landroid/widget/PressGestureDetector;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0}, Landroid/widget/PressGestureDetector$TextBoom;->addIndicator()V

    .line 231
    return-void
.end method

.method public stopTextBoom()V
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 430
    iput-boolean v5, p0, Landroid/widget/PressGestureDetector$TextBoom;->preparing:Z

    .line 431
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v1, v5}, Landroid/widget/PressGestureDetector;->-set0(Landroid/widget/PressGestureDetector;Z)Z

    .line 432
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 433
    return-void

    .line 435
    :cond_0
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 436
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 438
    :cond_1
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_2

    .line 439
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v6, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 440
    .local v0, "alpha":Landroid/animation/Animator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 441
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 442
    new-instance v1, Landroid/widget/PressGestureDetector$TextBoom$4;

    invoke-direct {v1, p0}, Landroid/widget/PressGestureDetector$TextBoom$4;-><init>(Landroid/widget/PressGestureDetector$TextBoom;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 463
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 428
    .end local v0    # "alpha":Landroid/animation/Animator;
    :goto_0
    return-void

    .line 465
    :cond_2
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 467
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->mLoopView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method

.method public unregisterObserver()V
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v1}, Landroid/widget/PressGestureDetector;->-get0(Landroid/widget/PressGestureDetector;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 240
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0}, Landroid/widget/PressGestureDetector$TextBoom;->removeIndicator()V

    .line 237
    return-void
.end method
