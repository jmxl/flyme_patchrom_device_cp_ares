.class Landroid/widget/BubbleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BubbleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BubbleDrawable$Shape;
    }
.end annotation


# static fields
.field private static final synthetic -android-widget-BubbleStyle$ArrowDirectionSwitchesValues:[I

.field private static final synthetic -android-widget-BubbleStyle$ArrowPosPolicySwitchesValues:[I


# instance fields
.field private mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

.field private mArrowPosPolicy:Landroid/widget/BubbleStyle$ArrowPosPolicy;

.field private mArrowTo:Landroid/graphics/PointF;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderPath:Landroid/graphics/Path;

.field private mBorderShape:Landroid/widget/BubbleDrawable$Shape;

.field private mFillColor:I

.field private mFillPadding:F

.field private mFillPaint:Landroid/graphics/Paint;

.field private mFillPath:Landroid/graphics/Path;

.field private mFillShape:Landroid/widget/BubbleDrawable$Shape;

.field private mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

.field private mOvalRect:Landroid/graphics/RectF;


# direct methods
.method private static synthetic -getandroid-widget-BubbleStyle$ArrowDirectionSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/widget/BubbleDrawable;->-android-widget-BubbleStyle$ArrowDirectionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/BubbleDrawable;->-android-widget-BubbleStyle$ArrowDirectionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/BubbleStyle$ArrowDirection;->values()[Landroid/widget/BubbleStyle$ArrowDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Auto:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Down:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Left:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->None:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Right:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Up:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Landroid/widget/BubbleDrawable;->-android-widget-BubbleStyle$ArrowDirectionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getandroid-widget-BubbleStyle$ArrowPosPolicySwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/widget/BubbleDrawable;->-android-widget-BubbleStyle$ArrowPosPolicySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/BubbleDrawable;->-android-widget-BubbleStyle$ArrowPosPolicySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/BubbleStyle$ArrowPosPolicy;->values()[Landroid/widget/BubbleStyle$ArrowPosPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/BubbleStyle$ArrowPosPolicy;->SelfBegin:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/widget/BubbleStyle$ArrowPosPolicy;->SelfCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/widget/BubbleStyle$ArrowPosPolicy;->SelfEnd:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/widget/BubbleStyle$ArrowPosPolicy;->TargetCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/widget/BubbleDrawable;->-android-widget-BubbleStyle$ArrowPosPolicySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->None:Landroid/widget/BubbleStyle$ArrowDirection;

    iput-object v0, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 29
    sget-object v0, Landroid/widget/BubbleStyle$ArrowPosPolicy;->TargetCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    iput-object v0, p0, Landroid/widget/BubbleDrawable;->mArrowPosPolicy:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .line 30
    new-instance v0, Landroid/widget/BubbleDrawable$Shape;

    invoke-direct {v0, p0, v2}, Landroid/widget/BubbleDrawable$Shape;-><init>(Landroid/widget/BubbleDrawable;Landroid/widget/BubbleDrawable$Shape;)V

    iput-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    .line 31
    new-instance v0, Landroid/widget/BubbleDrawable$Shape;

    invoke-direct {v0, p0, v2}, Landroid/widget/BubbleDrawable$Shape;-><init>(Landroid/widget/BubbleDrawable;Landroid/widget/BubbleDrawable$Shape;)V

    iput-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderShape:Landroid/widget/BubbleDrawable$Shape;

    .line 32
    new-instance v0, Landroid/widget/BubbleDrawable$Shape;

    invoke-direct {v0, p0, v2}, Landroid/widget/BubbleDrawable$Shape;-><init>(Landroid/widget/BubbleDrawable;Landroid/widget/BubbleDrawable$Shape;)V

    iput-object v0, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderPath:Landroid/graphics/Path;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/BubbleDrawable;->mFillPath:Landroid/graphics/Path;

    .line 37
    iput v1, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    .line 38
    const/high16 v0, -0x34000000    # -3.3554432E7f

    iput v0, p0, Landroid/widget/BubbleDrawable;->mFillColor:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/BubbleDrawable;->mBorderColor:I

    .line 40
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/BubbleDrawable;->mArrowTo:Landroid/graphics/PointF;

    .line 434
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/BubbleDrawable;->mOvalRect:Landroid/graphics/RectF;

    .line 27
    return-void
.end method

.method private buildBottomLeftCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V
    .locals 8
    .param p1, "shape"    # Landroid/widget/BubbleDrawable$Shape;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 426
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 427
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    mul-float/2addr v1, v4

    sub-float v3, v0, v1

    .line 428
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    mul-float/2addr v1, v4

    add-float v4, v0, v1

    .line 429
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p2

    move v7, v6

    .line 425
    invoke-direct/range {v0 .. v7}, Landroid/widget/BubbleDrawable;->compatPathArcTo(Landroid/graphics/Path;FFFFFF)V

    .line 424
    return-void
.end method

.method private buildBottomRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V
    .locals 8
    .param p1, "shape"    # Landroid/widget/BubbleDrawable$Shape;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 416
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    mul-float/2addr v1, v3

    sub-float v2, v0, v1

    .line 417
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    mul-float/2addr v1, v3

    sub-float v3, v0, v1

    .line 418
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 419
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .line 420
    const/4 v6, 0x0

    .line 421
    const/high16 v7, 0x42b40000    # 90.0f

    move-object v0, p0

    move-object v1, p2

    .line 415
    invoke-direct/range {v0 .. v7}, Landroid/widget/BubbleDrawable;->compatPathArcTo(Landroid/graphics/Path;FFFFFF)V

    .line 414
    return-void
.end method

.method private buildTopLeftCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V
    .locals 8
    .param p1, "shape"    # Landroid/widget/BubbleDrawable$Shape;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 396
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 397
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 398
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    mul-float/2addr v1, v5

    add-float v4, v0, v1

    .line 399
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    mul-float/2addr v1, v5

    add-float v5, v0, v1

    .line 400
    const/high16 v6, 0x43340000    # 180.0f

    .line 401
    const/high16 v7, 0x42b40000    # 90.0f

    move-object v0, p0

    move-object v1, p2

    .line 395
    invoke-direct/range {v0 .. v7}, Landroid/widget/BubbleDrawable;->compatPathArcTo(Landroid/graphics/Path;FFFFFF)V

    .line 394
    return-void
.end method

.method private buildTopRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V
    .locals 8
    .param p1, "shape"    # Landroid/widget/BubbleDrawable$Shape;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 406
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    mul-float/2addr v1, v5

    sub-float v2, v0, v1

    .line 407
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 408
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 409
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    mul-float/2addr v1, v5

    add-float v5, v0, v1

    .line 410
    const/high16 v6, 0x43870000    # 270.0f

    .line 411
    const/high16 v7, 0x42b40000    # 90.0f

    move-object v0, p0

    move-object v1, p2

    .line 405
    invoke-direct/range {v0 .. v7}, Landroid/widget/BubbleDrawable;->compatPathArcTo(Landroid/graphics/Path;FFFFFF)V

    .line 404
    return-void
.end method

.method private buildWithDownArrow(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V
    .locals 5
    .param p1, "shape"    # Landroid/widget/BubbleDrawable$Shape;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 332
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    .line 333
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 334
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 335
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 336
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildBottomLeftCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 337
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 338
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildTopLeftCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 339
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 340
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildTopRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 341
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    sub-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 342
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildBottomRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 343
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 344
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 331
    return-void
.end method

.method private buildWithLeftArrow(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V
    .locals 5
    .param p1, "shape"    # Landroid/widget/BubbleDrawable$Shape;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 283
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    .line 285
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 286
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 288
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildTopLeftCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 289
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 290
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildTopRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 291
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    sub-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildBottomRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 293
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 294
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildBottomLeftCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 295
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 296
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    return-void
.end method

.method private buildWithNoneArrow(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V
    .locals 9
    .param p1, "shape"    # Landroid/widget/BubbleDrawable$Shape;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 269
    iget-object v8, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    .line 270
    .local v8, "rect":Landroid/graphics/RectF;
    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 271
    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    .line 272
    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    mul-float/2addr v1, v5

    add-float v4, v0, v1

    iget v0, v8, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    mul-float/2addr v1, v5

    add-float v5, v0, v1

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x42b40000    # 90.0f

    move-object v0, p0

    move-object v1, p2

    .line 271
    invoke-direct/range {v0 .. v7}, Landroid/widget/BubbleDrawable;->compatPathArcTo(Landroid/graphics/Path;FFFFFF)V

    .line 273
    iget v0, v8, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    sub-float/2addr v0, v1

    iget v1, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 274
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildTopRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 275
    iget v0, v8, Landroid/graphics/RectF;->right:F

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    sub-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 276
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildBottomRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 277
    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    add-float/2addr v0, v1

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 278
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildBottomLeftCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 279
    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    add-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    return-void
.end method

.method private buildWithRightArrow(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V
    .locals 5
    .param p1, "shape"    # Landroid/widget/BubbleDrawable$Shape;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 316
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    .line 317
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 318
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 319
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    sub-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 320
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildBottomRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 321
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 322
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildBottomLeftCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 323
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 324
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildTopLeftCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 325
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 326
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildTopRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 327
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 328
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 315
    return-void
.end method

.method private buildWithUpArrow(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V
    .locals 5
    .param p1, "shape"    # Landroid/widget/BubbleDrawable$Shape;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 300
    iget-object v0, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    .line 301
    .local v0, "rect":Landroid/graphics/RectF;
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 302
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 303
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 304
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildTopRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 305
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    sub-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 306
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildBottomRightCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 307
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 308
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildBottomLeftCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 309
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    add-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 310
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildTopLeftCorner(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 311
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 312
    iget v1, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iget v2, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 299
    return-void
.end method

.method private compatPathArcTo(Landroid/graphics/Path;FFFFFF)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "startAngle"    # F
    .param p7, "sweepAngle"    # F

    .prologue
    .line 443
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOvalRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 444
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p6, p7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 442
    return-void
.end method

.method private static getLeftRightArrowPeakY(Landroid/widget/BubbleStyle$ArrowPosPolicy;Landroid/graphics/PointF;Landroid/widget/BubbleDrawable$Shape;)F
    .locals 3
    .param p0, "policy"    # Landroid/widget/BubbleStyle$ArrowPosPolicy;
    .param p1, "arrowTo"    # Landroid/graphics/PointF;
    .param p2, "shape"    # Landroid/widget/BubbleDrawable$Shape;

    .prologue
    .line 349
    invoke-static {}, Landroid/widget/BubbleDrawable;->-getandroid-widget-BubbleStyle$ArrowPosPolicySwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 365
    const/4 v0, 0x0

    .line 367
    .local v0, "y":F
    :goto_0
    return v0

    .line 351
    .end local v0    # "y":F
    :pswitch_0
    iget-object v1, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    add-float v0, v1, v2

    .line 352
    .restart local v0    # "y":F
    goto :goto_0

    .line 354
    .end local v0    # "y":F
    :pswitch_1
    iget-object v1, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .restart local v0    # "y":F
    goto :goto_0

    .line 357
    .end local v0    # "y":F
    :pswitch_2
    iget-object v1, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/RectF;->top:F

    .line 358
    .restart local v0    # "y":F
    iget v1, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowDelta:F

    add-float/2addr v0, v1

    .line 359
    goto :goto_0

    .line 361
    .end local v0    # "y":F
    :pswitch_3
    iget-object v1, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 362
    .restart local v0    # "y":F
    iget v1, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowDelta:F

    sub-float/2addr v0, v1

    .line 363
    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static getUpDownArrowPeakX(Landroid/widget/BubbleStyle$ArrowPosPolicy;Landroid/graphics/PointF;Landroid/widget/BubbleDrawable$Shape;)F
    .locals 3
    .param p0, "policy"    # Landroid/widget/BubbleStyle$ArrowPosPolicy;
    .param p1, "arrowTo"    # Landroid/graphics/PointF;
    .param p2, "shape"    # Landroid/widget/BubbleDrawable$Shape;

    .prologue
    .line 372
    invoke-static {}, Landroid/widget/BubbleDrawable;->-getandroid-widget-BubbleStyle$ArrowPosPolicySwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 388
    const/4 v0, 0x0

    .line 391
    .local v0, "x":F
    :goto_0
    return v0

    .line 374
    .end local v0    # "x":F
    :pswitch_0
    iget-object v1, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float v0, v1, v2

    .line 375
    .restart local v0    # "x":F
    goto :goto_0

    .line 377
    .end local v0    # "x":F
    :pswitch_1
    iget-object v1, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .restart local v0    # "x":F
    goto :goto_0

    .line 380
    .end local v0    # "x":F
    :pswitch_2
    iget-object v1, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/RectF;->left:F

    .line 381
    .restart local v0    # "x":F
    iget v1, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowDelta:F

    add-float/2addr v0, v1

    .line 382
    goto :goto_0

    .line 384
    .end local v0    # "x":F
    :pswitch_3
    iget-object v1, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/RectF;->right:F

    .line 385
    .restart local v0    # "x":F
    iget v1, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowDelta:F

    sub-float/2addr v0, v1

    .line 386
    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private updateBorderArrowPeak(Landroid/widget/BubbleStyle$ArrowDirection;Landroid/widget/BubbleStyle$ArrowPosPolicy;Landroid/graphics/PointF;Landroid/widget/BubbleDrawable$Shape;)V
    .locals 5
    .param p1, "direction"    # Landroid/widget/BubbleStyle$ArrowDirection;
    .param p2, "policy"    # Landroid/widget/BubbleStyle$ArrowPosPolicy;
    .param p3, "arrowTo"    # Landroid/graphics/PointF;
    .param p4, "outShape"    # Landroid/widget/BubbleDrawable$Shape;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 158
    invoke-static {}, Landroid/widget/BubbleDrawable;->-getandroid-widget-BubbleStyle$ArrowDirectionSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    sub-float/2addr v0, v1

    iput v0, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    .line 161
    iget-object v0, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    add-float/2addr v0, v1

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 162
    invoke-static {p2, p3, p4}, Landroid/widget/BubbleDrawable;->getLeftRightArrowPeakY(Landroid/widget/BubbleStyle$ArrowPosPolicy;Landroid/graphics/PointF;Landroid/widget/BubbleDrawable$Shape;)F

    move-result v1

    .line 163
    iget-object v2, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    sub-float/2addr v2, v3

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 161
    invoke-static {v0, v1, v2}, Landroid/util/BubbleViewUtils;->bound(FFF)F

    move-result v0

    iput v0, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    add-float/2addr v0, v1

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 167
    invoke-static {p2, p3, p4}, Landroid/widget/BubbleDrawable;->getUpDownArrowPeakX(Landroid/widget/BubbleStyle$ArrowPosPolicy;Landroid/graphics/PointF;Landroid/widget/BubbleDrawable$Shape;)F

    move-result v1

    .line 168
    iget-object v2, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    sub-float/2addr v2, v3

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 166
    invoke-static {v0, v1, v2}, Landroid/util/BubbleViewUtils;->bound(FFF)F

    move-result v0

    iput v0, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    .line 169
    iget-object v0, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    sub-float/2addr v0, v1

    iput v0, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v0, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    add-float/2addr v0, v1

    iput v0, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    .line 173
    iget-object v0, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    add-float/2addr v0, v1

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 174
    invoke-static {p2, p3, p4}, Landroid/widget/BubbleDrawable;->getLeftRightArrowPeakY(Landroid/widget/BubbleStyle$ArrowPosPolicy;Landroid/graphics/PointF;Landroid/widget/BubbleDrawable$Shape;)F

    move-result v1

    .line 175
    iget-object v2, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    sub-float/2addr v2, v3

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 173
    invoke-static {v0, v1, v2}, Landroid/util/BubbleViewUtils;->bound(FFF)F

    move-result v0

    iput v0, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    goto/16 :goto_0

    .line 178
    :pswitch_3
    iget-object v0, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    add-float/2addr v0, v1

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 179
    invoke-static {p2, p3, p4}, Landroid/widget/BubbleDrawable;->getUpDownArrowPeakX(Landroid/widget/BubbleStyle$ArrowPosPolicy;Landroid/graphics/PointF;Landroid/widget/BubbleDrawable$Shape;)F

    move-result v1

    .line 180
    iget-object v2, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    sub-float/2addr v2, v3

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p4, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 178
    invoke-static {v0, v1, v2}, Landroid/util/BubbleViewUtils;->bound(FFF)F

    move-result v0

    iput v0, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    .line 181
    iget-object v0, p4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    add-float/2addr v0, v1

    iput v0, p4, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBorderShape()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v2, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    invoke-virtual {v0, v2}, Landroid/widget/BubbleDrawable$Shape;->set(Landroid/widget/BubbleDrawable$Shape;)V

    .line 97
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v2, v0, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    .line 98
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v0, v0, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v3, v3, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v0}, Landroid/widget/BubbleStyle$ArrowDirection;->isLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v0, v0, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    :goto_0
    add-float/2addr v3, v0

    .line 99
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v0, v0, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v4, v4, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v4, v7

    add-float/2addr v4, v0

    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v0}, Landroid/widget/BubbleStyle$ArrowDirection;->isUp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v0, v0, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    :goto_1
    add-float/2addr v4, v0

    .line 100
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v0, v0, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v5, v5, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v5, v7

    sub-float v5, v0, v5

    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v0}, Landroid/widget/BubbleStyle$ArrowDirection;->isRight()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v0, v0, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    :goto_2
    sub-float v0, v5, v0

    .line 101
    iget-object v5, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v5, v5, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v6, v6, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v6}, Landroid/widget/BubbleStyle$ArrowDirection;->isDown()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v1, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v1, v1, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    :cond_0
    sub-float v1, v5, v1

    .line 97
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 104
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    iget-object v1, p0, Landroid/widget/BubbleDrawable;->mArrowPosPolicy:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    iget-object v2, p0, Landroid/widget/BubbleDrawable;->mArrowTo:Landroid/graphics/PointF;

    iget-object v3, p0, Landroid/widget/BubbleDrawable;->mBorderShape:Landroid/widget/BubbleDrawable$Shape;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/BubbleDrawable;->updateBorderArrowPeak(Landroid/widget/BubbleStyle$ArrowDirection;Landroid/widget/BubbleStyle$ArrowPosPolicy;Landroid/graphics/PointF;Landroid/widget/BubbleDrawable$Shape;)V

    .line 106
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v1, p0, Landroid/widget/BubbleDrawable;->mBorderPath:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Landroid/widget/BubbleDrawable;->updatePath(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 95
    return-void

    :cond_1
    move v0, v1

    .line 98
    goto :goto_0

    :cond_2
    move v0, v1

    .line 99
    goto :goto_1

    :cond_3
    move v0, v1

    .line 100
    goto :goto_2
.end method

.method private static updateFillArrowPeak(Landroid/widget/BubbleStyle$ArrowDirection;Landroid/widget/BubbleDrawable$Shape;Landroid/widget/BubbleDrawable$Shape;)V
    .locals 2
    .param p0, "direction"    # Landroid/widget/BubbleStyle$ArrowDirection;
    .param p1, "borderShape"    # Landroid/widget/BubbleDrawable$Shape;
    .param p2, "outFillShape"    # Landroid/widget/BubbleDrawable$Shape;

    .prologue
    .line 135
    invoke-static {}, Landroid/widget/BubbleDrawable;->-getandroid-widget-BubbleStyle$ArrowDirectionSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    .line 138
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    iput v0, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v0, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    .line 142
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    iput v0, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    goto :goto_0

    .line 145
    :pswitch_2
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iput v0, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    .line 146
    iget-object v0, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    goto :goto_0

    .line 149
    :pswitch_3
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iput v0, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    .line 150
    iget-object v0, p2, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateFillShape()V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 110
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mBorderShape:Landroid/widget/BubbleDrawable$Shape;

    invoke-virtual {v4, v6}, Landroid/widget/BubbleDrawable$Shape;->set(Landroid/widget/BubbleDrawable$Shape;)V

    .line 111
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    iput v5, v4, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    .line 112
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v6, v4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    .line 113
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v4, v4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v7, v7, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    add-float/2addr v4, v7

    iget v7, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    add-float/2addr v7, v4

    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v4}, Landroid/widget/BubbleStyle$ArrowDirection;->isLeft()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v4, v4, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    :goto_0
    add-float/2addr v7, v4

    .line 114
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v4, v4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v8, v8, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    add-float/2addr v4, v8

    iget v8, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    add-float/2addr v8, v4

    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v4}, Landroid/widget/BubbleStyle$ArrowDirection;->isUp()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v4, v4, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    :goto_1
    add-float/2addr v8, v4

    .line 115
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v4, v4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v9, v9, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    sub-float/2addr v4, v9

    iget v9, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    sub-float v9, v4, v9

    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v4}, Landroid/widget/BubbleStyle$ArrowDirection;->isRight()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v4, v4, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    :goto_2
    sub-float/2addr v9, v4

    .line 116
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v4, v4, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v10, v10, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    sub-float/2addr v4, v10

    iget v10, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    sub-float v10, v4, v10

    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v4}, Landroid/widget/BubbleStyle$ArrowDirection;->isDown()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v4, v4, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    :goto_3
    sub-float v4, v10, v4

    .line 112
    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v6, v6, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    iget-object v7, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v7, v7, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v4, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    .line 119
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v6, v6, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    iget-object v7, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v7, v7, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v4, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    .line 120
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v6, v6, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    iget-object v7, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v7, v7, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v4, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    .line 121
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v6, v6, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    iget-object v7, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v7, v7, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v4, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    .line 123
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v4, v4, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    float-to-double v4, v4

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v6, v6, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v6, v11

    iget v7, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    add-float/2addr v6, v7

    mul-float/2addr v6, v11

    float-to-double v6, v6

    iget-object v8, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v8, v8, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    iget-object v9, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v9, v9, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    div-float/2addr v9, v11

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    sub-double v2, v4, v6

    .line 124
    .local v2, "w":D
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v4, v4, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v6, v6, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    float-to-double v6, v6

    div-double v0, v4, v6

    .line 126
    .local v0, "h":D
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v5, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v5, v5, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    div-float/2addr v5, v11

    float-to-double v6, v5

    add-double/2addr v6, v0

    iget v5, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    float-to-double v8, v5

    add-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, v4, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    .line 127
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v5, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    iget v5, v5, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v6, v6, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget v6, v6, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    div-float/2addr v5, v6

    iput v5, v4, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    .line 129
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    iget-object v5, p0, Landroid/widget/BubbleDrawable;->mBorderShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v6, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    invoke-static {v4, v5, v6}, Landroid/widget/BubbleDrawable;->updateFillArrowPeak(Landroid/widget/BubbleStyle$ArrowDirection;Landroid/widget/BubbleDrawable$Shape;Landroid/widget/BubbleDrawable$Shape;)V

    .line 131
    iget-object v4, p0, Landroid/widget/BubbleDrawable;->mFillShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v5, p0, Landroid/widget/BubbleDrawable;->mFillPath:Landroid/graphics/Path;

    invoke-direct {p0, v4, v5}, Landroid/widget/BubbleDrawable;->updatePath(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 109
    return-void

    .end local v0    # "h":D
    .end local v2    # "w":D
    :cond_0
    move v4, v5

    .line 113
    goto/16 :goto_0

    :cond_1
    move v4, v5

    .line 114
    goto/16 :goto_1

    :cond_2
    move v4, v5

    .line 115
    goto/16 :goto_2

    :cond_3
    move v4, v5

    .line 116
    goto/16 :goto_3
.end method

.method private updatePath(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V
    .locals 2
    .param p1, "shape"    # Landroid/widget/BubbleDrawable$Shape;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    .line 248
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 249
    invoke-static {}, Landroid/widget/BubbleDrawable;->-getandroid-widget-BubbleStyle$ArrowDirectionSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 263
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildWithNoneArrow(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    .line 247
    :goto_0
    return-void

    .line 251
    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildWithUpArrow(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    goto :goto_0

    .line 254
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildWithDownArrow(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    goto :goto_0

    .line 257
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildWithLeftArrow(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    goto :goto_0

    .line 260
    :pswitch_3
    invoke-direct {p0, p1, p2}, Landroid/widget/BubbleDrawable;->buildWithRightArrow(Landroid/widget/BubbleDrawable$Shape;Landroid/graphics/Path;)V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 220
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/BubbleDrawable;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mFillPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/BubbleDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 224
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderShape:Landroid/widget/BubbleDrawable$Shape;

    iget v0, v0, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 227
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 228
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/BubbleDrawable;->mBorderShape:Landroid/widget/BubbleDrawable$Shape;

    iget v1, v1, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/BubbleDrawable;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/BubbleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 219
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method resetRect(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iget-object v0, v0, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 70
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 235
    return-void
.end method

.method setArrowDirection(Landroid/widget/BubbleStyle$ArrowDirection;)V
    .locals 0
    .param p1, "arrowDirection"    # Landroid/widget/BubbleStyle$ArrowDirection;

    .prologue
    .line 194
    iput-object p1, p0, Landroid/widget/BubbleDrawable;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 193
    return-void
.end method

.method setArrowHeight(F)V
    .locals 1
    .param p1, "arrowHeight"    # F

    .prologue
    .line 202
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iput p1, v0, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    .line 201
    return-void
.end method

.method setArrowPosDelta(F)V
    .locals 1
    .param p1, "arrowDelta"    # F

    .prologue
    .line 215
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iput p1, v0, Landroid/widget/BubbleDrawable$Shape;->ArrowDelta:F

    .line 214
    return-void
.end method

.method setArrowPosPolicy(Landroid/widget/BubbleStyle$ArrowPosPolicy;)V
    .locals 0
    .param p1, "arrowPosPolicy"    # Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .prologue
    .line 198
    iput-object p1, p0, Landroid/widget/BubbleDrawable;->mArrowPosPolicy:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .line 197
    return-void
.end method

.method setArrowTo(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 210
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mArrowTo:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 211
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mArrowTo:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 209
    return-void
.end method

.method setArrowWidth(F)V
    .locals 1
    .param p1, "arrowWidth"    # F

    .prologue
    .line 206
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iput p1, v0, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    .line 205
    return-void
.end method

.method setBorderColor(I)V
    .locals 0
    .param p1, "borderColor"    # I

    .prologue
    .line 79
    iput p1, p0, Landroid/widget/BubbleDrawable;->mBorderColor:I

    .line 78
    return-void
.end method

.method setBorderWidth(F)V
    .locals 1
    .param p1, "borderWidth"    # F

    .prologue
    .line 83
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iput p1, v0, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    .line 82
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 239
    return-void
.end method

.method setCornerRadius(FFFF)V
    .locals 1
    .param p1, "topLeft"    # F
    .param p2, "topRight"    # F
    .param p3, "bottomRight"    # F
    .param p4, "bottomLeft"    # F

    .prologue
    .line 187
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iput p1, v0, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    .line 188
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iput p2, v0, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    .line 189
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iput p3, v0, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    .line 190
    iget-object v0, p0, Landroid/widget/BubbleDrawable;->mOriginalShape:Landroid/widget/BubbleDrawable$Shape;

    iput p4, v0, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    .line 186
    return-void
.end method

.method setFillColor(I)V
    .locals 0
    .param p1, "fillColor"    # I

    .prologue
    .line 75
    iput p1, p0, Landroid/widget/BubbleDrawable;->mFillColor:I

    .line 74
    return-void
.end method

.method setFillPadding(F)V
    .locals 0
    .param p1, "fillPadding"    # F

    .prologue
    .line 87
    iput p1, p0, Landroid/widget/BubbleDrawable;->mFillPadding:F

    .line 86
    return-void
.end method

.method updateShapes()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/widget/BubbleDrawable;->updateBorderShape()V

    .line 92
    invoke-direct {p0}, Landroid/widget/BubbleDrawable;->updateFillShape()V

    .line 90
    return-void
.end method
