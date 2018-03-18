.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private bindTempDetach()V
    .locals 3

    .prologue
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    .line 593
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "dispatchFinishTemporaryDetach"

    const/4 v2, 0x0

    .line 595
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    .line 601
    return-void

    .line 599
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Couldn\'t find method"

    .line 598
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 864
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollOffset()I

    move-result v2

    .line 865
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 867
    if-eqz v3, :cond_0

    .line 868
    if-ltz p2, :cond_1

    .line 871
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_3

    :goto_0
    return v0

    .line 867
    :cond_0
    return v0

    .line 869
    :cond_1
    if-gtz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 871
    goto :goto_0
.end method

.method private canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 876
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result v2

    .line 877
    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollRange()I

    move-result v3

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 879
    if-eqz v3, :cond_0

    .line 880
    if-ltz p2, :cond_1

    .line 883
    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_3

    :goto_0
    return v0

    .line 879
    :cond_0
    return v0

    .line 881
    :cond_1
    if-gtz v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 883
    goto :goto_0
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 1

    .prologue
    .line 660
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 397
    instance-of v1, p1, Landroid/support/v4/view/ScrollingView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Landroid/support/v4/view/ScrollingView;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 401
    instance-of v1, p1, Landroid/support/v4/view/ScrollingView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Landroid/support/v4/view/ScrollingView;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public combineMeasuredStates(II)I
    .locals 1

    .prologue
    .line 954
    or-int v0, p1, p2

    return v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0

    .prologue
    .line 811
    return-object p2
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 571
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-eqz v0, :cond_0

    .line 574
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 582
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 584
    :goto_1
    return-void

    .line 572
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    goto :goto_0

    .line 576
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 579
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Error calling dispatchFinishTemporaryDetach"

    .line 578
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 932
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v0, :cond_0

    .line 936
    return v1

    .line 933
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 941
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v0, :cond_0

    .line 944
    return v1

    .line 942
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 922
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v0, :cond_0

    .line 926
    return v1

    .line 923
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 912
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v0, :cond_0

    .line 916
    return v1

    :cond_0
    move-object v0, p1

    .line 913
    check-cast v0, Landroid/support/v4/view/NestedScrollingChild;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 554
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-eqz v0, :cond_0

    .line 557
    :goto_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 567
    :goto_1
    return-void

    .line 555
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    goto :goto_0

    .line 559
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 562
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ViewCompat"

    const-string/jumbo v2, "Error calling dispatchStartTemporaryDetach"

    .line 561
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 529
    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 463
    return-object v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 466
    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 845
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 860
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 775
    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 757
    return v0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method getFrameTime()J
    .locals 2

    .prologue
    const-wide/16 v0, 0xa

    .line 448
    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 451
    return v0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 475
    return v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 472
    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 486
    return v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 524
    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 655
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 650
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getOverScrollMode(Landroid/view/View;)I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 405
    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 725
    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 730
    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 625
    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 630
    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 635
    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 640
    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 645
    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 739
    return-object v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 605
    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 610
    return v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 766
    return v0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 744
    return v0
.end method

.method public getX(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 615
    return v0
.end method

.method public getY(Landroid/view/View;)F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 620
    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 959
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getElevation(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 903
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v0, :cond_0

    .line 906
    return v1

    .line 904
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 964
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 949
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 837
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v0, :cond_0

    .line 840
    return v1

    .line 838
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isOpaque(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 502
    if-nez v1, :cond_0

    .line 505
    return v0

    .line 503
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 796
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0

    .prologue
    .line 806
    return-object p2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 437
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 439
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    .line 440
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 749
    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 1

    .prologue
    .line 509
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method public setActivated(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 850
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 851
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 855
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 856
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 791
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 830
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v0, :cond_0

    .line 833
    :goto_0
    return-void

    .line 831
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    goto :goto_0
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 549
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 550
    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 666
    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 686
    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 735
    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 762
    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 711
    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 888
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v0, :cond_0

    .line 891
    return v1

    .line 889
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 896
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v0, :cond_0

    .line 899
    :goto_0
    return-void

    .line 897
    :cond_0
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    goto :goto_0
.end method
