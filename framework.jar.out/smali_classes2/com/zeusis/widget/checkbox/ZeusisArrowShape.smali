.class public Lcom/zeusis/widget/checkbox/ZeusisArrowShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "ZeusisArrowShape.java"


# instance fields
.field private ARROW_ROTATE_ANIMATION:I

.field private ARROW_ROTATE_LINE:I

.field private ARROW_SCALE_MIN:F

.field private mAnimationPercent:F

.field private mArrowLeft:F

.field private mArrowRadius:F

.field private mArrowStrokeWidth:F

.field private mArrowTop:F

.field private mBoxSize:F

.field private mEndPercentX:F

.field private mEndPercentY:F

.field private mHalfStrokeWidth:F

.field private mInterpolatedTime:F

.field private mIsInverseAnimation:Z

.field private mIsRunning:Z

.field private mIsShowUp:Z

.field private mMiddlePercentX:F

.field private mMiddlePercentY:F

.field private mOneThirdBoxSize:F

.field private mStartPercentX:F

.field private mStartPercentY:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 4
    .param p1, "boxSize"    # F
    .param p2, "isRoundEdge"    # Z

    .prologue
    const/high16 v3, 0x3f200000    # 0.625f

    const v2, 0x3f0e147b    # 0.555f

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    .line 18
    iput-boolean v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsInverseAnimation:Z

    .line 19
    iput-boolean v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsShowUp:Z

    .line 20
    iput-boolean v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsRunning:Z

    .line 22
    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentX:F

    .line 23
    iput v3, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentY:F

    .line 24
    iput v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentX:F

    .line 25
    iput v3, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentY:F

    .line 26
    iput v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mEndPercentX:F

    .line 27
    const v0, 0x3e570a3d    # 0.21f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mEndPercentY:F

    .line 29
    const/16 v0, 0x4b

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_ANIMATION:I

    .line 30
    const/16 v0, 0x2d

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_LINE:I

    .line 31
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_SCALE_MIN:F

    .line 37
    const/high16 v0, 0x41100000    # 9.0f

    div-float v0, p1, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->setArrowShape(FZF)V

    .line 36
    return-void
.end method

.method public constructor <init>(FZF)V
    .locals 4
    .param p1, "boxSize"    # F
    .param p2, "isRoundEdge"    # Z
    .param p3, "arrowStrokeWidth"    # F

    .prologue
    const/high16 v3, 0x3f200000    # 0.625f

    const v2, 0x3f0e147b    # 0.555f

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    .line 18
    iput-boolean v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsInverseAnimation:Z

    .line 19
    iput-boolean v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsShowUp:Z

    .line 20
    iput-boolean v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsRunning:Z

    .line 22
    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentX:F

    .line 23
    iput v3, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentY:F

    .line 24
    iput v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentX:F

    .line 25
    iput v3, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentY:F

    .line 26
    iput v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mEndPercentX:F

    .line 27
    const v0, 0x3e570a3d    # 0.21f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mEndPercentY:F

    .line 29
    const/16 v0, 0x4b

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_ANIMATION:I

    .line 30
    const/16 v0, 0x2d

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_LINE:I

    .line 31
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_SCALE_MIN:F

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->setArrowShape(FZF)V

    .line 40
    return-void
.end method

.method constructor <init>(FZZ)V
    .locals 4
    .param p1, "boxSize"    # F
    .param p2, "isRoundEdge"    # Z
    .param p3, "isWithoutBorder"    # Z

    .prologue
    const/high16 v3, 0x3f200000    # 0.625f

    const v2, 0x3f0e147b    # 0.555f

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    .line 18
    iput-boolean v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsInverseAnimation:Z

    .line 19
    iput-boolean v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsShowUp:Z

    .line 20
    iput-boolean v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsRunning:Z

    .line 22
    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentX:F

    .line 23
    iput v3, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentY:F

    .line 24
    iput v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentX:F

    .line 25
    iput v3, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentY:F

    .line 26
    iput v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mEndPercentX:F

    .line 27
    const v0, 0x3e570a3d    # 0.21f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mEndPercentY:F

    .line 29
    const/16 v0, 0x4b

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_ANIMATION:I

    .line 30
    const/16 v0, 0x2d

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_LINE:I

    .line 31
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_SCALE_MIN:F

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->setCheckBoxArrowShape(FZZ)V

    .line 44
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFF)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "middleX"    # F
    .param p6, "middleY"    # F
    .param p7, "endX"    # F
    .param p8, "endY"    # F

    .prologue
    .line 160
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    .line 162
    .local v6, "offsetArrow":F
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_LINE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p2

    .line 163
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 164
    add-float v2, p6, v6

    move-object v0, p1

    move v1, p5

    move v3, p7

    move v4, p8

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 165
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_LINE:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 157
    return-void
.end method

.method private drawLineAnimation(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 139
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentX:F

    iget v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentX:F

    sub-float/2addr v1, v2

    mul-float v9, v0, v1

    .line 140
    .local v9, "lineFirst":F
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentY:F

    iget v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mEndPercentY:F

    sub-float/2addr v1, v2

    mul-float v12, v0, v1

    .line 141
    .local v12, "lineSecond":F
    add-float v10, v9, v12

    .line 142
    .local v10, "lineMax":F
    const/4 v11, 0x0

    .line 143
    .local v11, "lineOffset":F
    iget-boolean v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsShowUp:Z

    if-eqz v0, :cond_0

    .line 144
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    mul-float v11, v10, v0

    .line 149
    :goto_0
    cmpg-float v0, v11, v9

    if-gtz v0, :cond_1

    .line 150
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentX:F

    mul-float v3, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentY:F

    mul-float v4, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentX:F

    mul-float/2addr v0, v1

    add-float v5, v0, v11

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentY:F

    mul-float v6, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentX:F

    mul-float/2addr v0, v1

    add-float v7, v0, v11

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentY:F

    mul-float v8, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFF)V

    .line 137
    :goto_1
    return-void

    .line 146
    :cond_0
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float v11, v10, v0

    goto :goto_0

    .line 152
    :cond_1
    sub-float/2addr v11, v9

    .line 153
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentX:F

    mul-float v3, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentY:F

    mul-float v4, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentX:F

    mul-float v5, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentY:F

    mul-float v6, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mEndPercentX:F

    mul-float v7, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentY:F

    mul-float/2addr v0, v1

    sub-float v8, v0, v11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFF)V

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 103
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 104
    return-void

    .line 105
    :cond_0
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    .line 107
    iget-boolean v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsShowUp:Z

    if-eqz v0, :cond_1

    .line 108
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_ANIMATION:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 113
    .local v9, "arrowCanvas":I
    iget-boolean v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsShowUp:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_SCALE_MIN:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_SCALE_MIN:F

    sub-float v1, v4, v1

    iget v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    mul-float/2addr v1, v2

    add-float v12, v0, v1

    .line 114
    .local v12, "scale":F
    :goto_0
    iget-boolean v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsShowUp:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_ANIMATION:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    :goto_1
    mul-float v11, v0, v1

    .line 115
    .local v11, "rotate":F
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    div-float/2addr v1, v3

    invoke-virtual {p1, v11, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 116
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    div-float/2addr v0, v3

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    div-float/2addr v1, v3

    invoke-virtual {p1, v12, v12, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 119
    .local v10, "lineCanvas":I
    invoke-direct {p0, p1, p2}, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->drawLineAnimation(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 120
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 122
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 124
    iget-boolean v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsShowUp:Z

    if-eqz v0, :cond_2

    .line 125
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_ANIMATION:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    div-float/2addr v1, v3

    iget v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 101
    .end local v9    # "arrowCanvas":I
    .end local v10    # "lineCanvas":I
    .end local v11    # "rotate":F
    .end local v12    # "scale":F
    :cond_2
    :goto_2
    return-void

    .line 113
    .restart local v9    # "arrowCanvas":I
    :cond_3
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_SCALE_MIN:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_SCALE_MIN:F

    sub-float v1, v4, v1

    iget v2, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    add-float v12, v0, v1

    .restart local v12    # "scale":F
    goto :goto_0

    .line 114
    :cond_4
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->ARROW_ROTATE_ANIMATION:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    goto :goto_1

    .line 129
    .end local v9    # "arrowCanvas":I
    .end local v12    # "scale":F
    :cond_5
    iget-boolean v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsShowUp:Z

    if-eqz v0, :cond_2

    .line 130
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentX:F

    mul-float v3, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mStartPercentY:F

    mul-float v4, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentX:F

    mul-float v5, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mMiddlePercentY:F

    mul-float v6, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mEndPercentX:F

    mul-float v7, v0, v1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    iget v1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mEndPercentY:F

    mul-float v8, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFFFF)V

    goto :goto_2
.end method

.method public getAnimationPercent()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    return v0
.end method

.method public getInterpolatedTime()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mInterpolatedTime:F

    return v0
.end method

.method public isInverseAnimation()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsInverseAnimation:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsRunning:Z

    return v0
.end method

.method public isShowUp()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsShowUp:Z

    return v0
.end method

.method public setAnimationPercent(F)V
    .locals 0
    .param p1, "animationPercent"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mAnimationPercent:F

    .line 68
    return-void
.end method

.method public setArrowShape(FZF)V
    .locals 3
    .param p1, "boxSize"    # F
    .param p2, "isRoundEdge"    # Z
    .param p3, "arrowStrokeWidth"    # F

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    .line 49
    iput p1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    .line 50
    const/high16 v0, 0x40400000    # 3.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mOneThirdBoxSize:F

    .line 51
    iput p3, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mArrowStrokeWidth:F

    .line 52
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mArrowStrokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mHalfStrokeWidth:F

    .line 53
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mArrowRadius:F

    .line 54
    div-float v0, p1, v2

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mArrowLeft:F

    .line 55
    div-float v0, p1, v2

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mArrowTop:F

    .line 57
    invoke-virtual {p0, p1, p1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 48
    return-void

    .line 53
    :cond_0
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mHalfStrokeWidth:F

    goto :goto_0
.end method

.method setCheckBoxArrowShape(FZZ)V
    .locals 6
    .param p1, "boxSize"    # F
    .param p2, "isRoundEdge"    # Z
    .param p3, "isWithoutBorder"    # Z

    .prologue
    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 170
    iput p1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    .line 171
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mOneThirdBoxSize:F

    .line 172
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    mul-float/2addr v0, v2

    const/high16 v1, 0x41d80000    # 27.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mArrowStrokeWidth:F

    .line 173
    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mArrowStrokeWidth:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mHalfStrokeWidth:F

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mArrowRadius:F

    .line 175
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    div-float/2addr v0, v3

    :goto_0
    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mArrowLeft:F

    .line 176
    if-eqz p3, :cond_1

    iget v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mBoxSize:F

    div-float/2addr v0, v3

    :goto_1
    iput v0, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mArrowTop:F

    .line 178
    invoke-virtual {p0, p1, p1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 169
    return-void

    .line 175
    :cond_0
    mul-float v0, p1, v4

    div-float/2addr v0, v5

    goto :goto_0

    .line 176
    :cond_1
    mul-float v0, p1, v4

    div-float/2addr v0, v5

    goto :goto_1
.end method

.method public setInterpolatedTime(F)V
    .locals 0
    .param p1, "interpolatedTime"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mInterpolatedTime:F

    .line 60
    return-void
.end method

.method public setIsInverseAnimation(Z)V
    .locals 0
    .param p1, "isInverse"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsInverseAnimation:Z

    .line 76
    return-void
.end method

.method public setIsRunning(Z)V
    .locals 0
    .param p1, "isRunning"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsRunning:Z

    .line 84
    return-void
.end method

.method public setIsShowUp(Z)V
    .locals 0
    .param p1, "isShowUp"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/zeusis/widget/checkbox/ZeusisArrowShape;->mIsShowUp:Z

    .line 92
    return-void
.end method
