.class Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1

    .prologue
    .line 1811
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    .line 1805
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;-><init>(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    .line 1812
    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 1813
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V
    .locals 0

    .prologue
    .line 1801
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V

    return-void
.end method

.method private closeOtherDrawer()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 1862
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-eq v1, v0, :cond_0

    .line 1863
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1864
    if-nez v0, :cond_1

    .line 1867
    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x5

    .line 1862
    goto :goto_0

    .line 1865
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_1
.end method

.method private peekDrawer()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1896
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v4

    .line 1897
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    if-eq v0, v5, :cond_1

    move v0, v1

    .line 1898
    :goto_0
    if-nez v0, :cond_2

    .line 1902
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    .line 1903
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v4

    .line 1906
    :goto_1
    if-nez v3, :cond_4

    .line 1918
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1897
    goto :goto_0

    .line 1899
    :cond_2
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v3

    .line 1900
    if-nez v3, :cond_3

    :goto_3
    add-int/2addr v1, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    goto :goto_3

    .line 1906
    :cond_4
    if-nez v0, :cond_6

    :cond_5
    if-nez v0, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v1, :cond_0

    :goto_4
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1909
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1910
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v3, v1, v5}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1911
    iput-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 1912
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1914
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 1916
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->cancelChildViewTouch()V

    goto :goto_2

    .line 1906
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    if-ge v4, v1, :cond_5

    goto :goto_4
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1953
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1956
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1957
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1954
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 1963
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1948
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public onEdgeDragStarted(II)V
    .locals 2

    .prologue
    .line 1935
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1938
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1941
    :goto_0
    if-nez v0, :cond_2

    .line 1944
    :cond_0
    :goto_1
    return-void

    .line 1936
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1941
    :cond_2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1942
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public onEdgeLock(I)Z
    .locals 1

    .prologue
    .line 1929
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 4

    .prologue
    .line 1890
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1891
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1855
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1856
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 1858
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    .line 1859
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 3

    .prologue
    .line 1833
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1834
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1839
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1842
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1845
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 1846
    sub-int/2addr v2, p2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 1848
    :goto_0
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    const/4 v2, 0x0

    .line 1849
    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1850
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1851
    return-void

    .line 1843
    :cond_0
    add-int v2, v0, p2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1849
    goto :goto_1
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 1873
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v3

    .line 1874
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1877
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    const/4 v5, 0x3

    invoke-virtual {v1, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1880
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    .line 1881
    cmpg-float v5, p2, v6

    if-gez v5, :cond_0

    move v0, v2

    :cond_0
    if-nez v0, :cond_1

    cmpl-float v0, p2, v6

    if-nez v0, :cond_6

    cmpl-float v0, v3, v7

    if-lez v0, :cond_6

    :cond_1
    sub-int v0, v1, v4

    .line 1884
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1885
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1886
    return-void

    .line 1878
    :cond_3
    cmpl-float v1, p2, v6

    if-lez v1, :cond_5

    :goto_1
    if-nez v2, :cond_2

    cmpl-float v1, p2, v6

    if-nez v1, :cond_4

    cmpl-float v1, v3, v7

    if-gtz v1, :cond_2

    :cond_4
    neg-int v0, v4

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    move v0, v1

    .line 1881
    goto :goto_0
.end method

.method public removeCallbacks()V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1821
    return-void
.end method

.method public setDragger(Landroid/support/v4/widget/ViewDragHelper;)V
    .locals 0

    .prologue
    .line 1816
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1817
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1827
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
