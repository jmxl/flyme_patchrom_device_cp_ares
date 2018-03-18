.class Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/dialog/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerFrameLayout"
.end annotation


# instance fields
.field private final FROM_COLOR:I

.field private final TO_COLOR:I

.field private bottom:I

.field private isShadeOn:Z

.field private left:I

.field mAnimator:Landroid/animation/ValueAnimator;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mClickOutside:Z

.field private right:I

.field final synthetic this$0:Lcom/zeusis/widget/dialog/BaseDialog;

.field private top:I


# direct methods
.method static synthetic -get0(Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mBgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->onStart()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->onStop()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->stopAnimator()V

    return-void
.end method

.method public constructor <init>(Lcom/zeusis/widget/dialog/BaseDialog;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lcom/zeusis/widget/dialog/BaseDialog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0xbd

    const/16 v1, 0x3c

    const/4 v0, 0x0

    .line 1508
    iput-object p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    .line 1509
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1498
    iput-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mClickOutside:Z

    .line 1505
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->FROM_COLOR:I

    .line 1506
    const/16 v0, 0x99

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->TO_COLOR:I

    .line 1510
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1511
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->initPaint()V

    .line 1512
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->initRes()V

    .line 1508
    return-void
.end method

.method private initPaint()V
    .locals 4

    .prologue
    .line 1555
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mBgPaint:Landroid/graphics/Paint;

    .line 1556
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1557
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->FROM_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1559
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mBgPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x42200000    # 40.0f

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1554
    return-void
.end method

.method private initRes()V
    .locals 1

    .prologue
    .line 1563
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1562
    return-void
.end method

.method private isOutsideDialog(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    .line 1600
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v2}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v2}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v2}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v2}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onStart()V
    .locals 0

    .prologue
    .line 1547
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->startAnimator()V

    .line 1546
    return-void
.end method

.method private onStop()V
    .locals 0

    .prologue
    .line 1551
    invoke-direct {p0}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->stopAnimator()V

    .line 1550
    return-void
.end method

.method private startAnimator()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1521
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->isShadeOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1522
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->FROM_COLOR:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->TO_COLOR:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->FROM_COLOR:I

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ObjectAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1523
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1524
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1525
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1526
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout$1;

    invoke-direct {v1, p0}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout$1;-><init>(Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1534
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1520
    :cond_0
    return-void
.end method

.method private stopAnimator()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1540
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->isShadeOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1542
    iput-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1539
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1591
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1592
    iget-object v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1594
    iget v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->left:I

    int-to-float v1, v0

    iget v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->top:I

    int-to-float v2, v0

    iget v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->right:I

    int-to-float v3, v0

    iget v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1590
    :goto_0
    return-void

    .line 1596
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1577
    sub-int v4, p4, p2

    iget-object v5, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v5}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 1578
    .local v1, "childLeft":I
    sub-int v4, p5, p3

    iget-object v5, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v5}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 1579
    .local v3, "childTop":I
    iget-object v4, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v4}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 1580
    .local v2, "childRight":I
    iget-object v4, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v4}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 1581
    .local v0, "childBottom":I
    iput v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->left:I

    .line 1582
    iput v3, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->top:I

    .line 1583
    iput v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->right:I

    .line 1584
    iput v0, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->bottom:I

    .line 1586
    iget-object v4, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v4}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1576
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1568
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1569
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1571
    .local v0, "heightSize":I
    iget-object v2, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v2}, Lcom/zeusis/widget/dialog/BaseDialog;->-get6(Lcom/zeusis/widget/dialog/BaseDialog;)Lcom/zeusis/widget/dialog/BaseDialog$DialogCardView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    .line 1572
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1567
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1605
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1607
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 1608
    return v4

    .line 1610
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1632
    return v3

    .line 1612
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->isOutsideDialog(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1613
    iput-boolean v4, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mClickOutside:Z

    .line 1614
    return v4

    .line 1616
    :cond_1
    return v3

    .line 1618
    :pswitch_1
    iget-boolean v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mClickOutside:Z

    return v1

    .line 1620
    :pswitch_2
    iput-boolean v3, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mClickOutside:Z

    .line 1621
    return v3

    .line 1623
    :pswitch_3
    iget-boolean v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mClickOutside:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->isOutsideDialog(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1624
    iput-boolean v3, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->mClickOutside:Z

    .line 1625
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get4(Lcom/zeusis/widget/dialog/BaseDialog;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->-get5(Lcom/zeusis/widget/dialog/BaseDialog;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1626
    iget-object v1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->this$0:Lcom/zeusis/widget/dialog/BaseDialog;

    invoke-virtual {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->dismiss()V

    .line 1627
    :cond_2
    return v4

    .line 1629
    :cond_3
    return v3

    .line 1610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setShadeOn(Z)V
    .locals 0
    .param p1, "isShadeOn"    # Z

    .prologue
    .line 1516
    iput-boolean p1, p0, Lcom/zeusis/widget/dialog/BaseDialog$ContainerFrameLayout;->isShadeOn:Z

    .line 1515
    return-void
.end method
