.class Landroid/widget/BubbleImpl;
.super Ljava/lang/Object;
.source "BubbleImpl.java"

# interfaces
.implements Landroid/widget/BubbleStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BubbleImpl$1;
    }
.end annotation


# static fields
.field private static final synthetic -android-widget-BubbleStyle$ArrowDirectionSwitchesValues:[I


# instance fields
.field private mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

.field private mArrowHeight:F

.field private mArrowPosDelta:F

.field private mArrowPosPolicy:Landroid/widget/BubbleStyle$ArrowPosPolicy;

.field private mArrowToViewId:I

.field private mArrowToViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mArrowWidth:F

.field private mBorderColor:I

.field private mBorderWidth:F

.field private mBubbleDrawable:Landroid/widget/BubbleDrawable;

.field private mCornerBottomLeftRadius:F

.field private mCornerBottomRightRadius:F

.field private mCornerTopLeftRadius:F

.field private mCornerTopRightRadius:F

.field private mDrawableArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

.field private mFillColor:I

.field private mFillPadding:F

.field private mHolderCallback:Landroid/widget/BubbleCallback;

.field private mLocation:[I

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPaddingBottomOffset:I

.field private mPaddingLeftOffset:I

.field private mPaddingRightOffset:I

.field private mPaddingTopOffset:I

.field private mParentView:Landroid/view/View;

.field private mRectSelf:Landroid/graphics/Rect;

.field private mRectTo:Landroid/graphics/Rect;


# direct methods
.method private static synthetic -getandroid-widget-BubbleStyle$ArrowDirectionSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/widget/BubbleImpl;->-android-widget-BubbleStyle$ArrowDirectionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/BubbleImpl;->-android-widget-BubbleStyle$ArrowDirectionSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Down:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Left:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->None:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Right:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Up:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Landroid/widget/BubbleImpl;->-android-widget-BubbleStyle$ArrowDirectionSwitchesValues:[I

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

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/widget/BubbleDrawable;

    invoke-direct {v0}, Landroid/widget/BubbleDrawable;-><init>()V

    iput-object v0, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    .line 33
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->Auto:Landroid/widget/BubbleStyle$ArrowDirection;

    iput-object v0, p0, Landroid/widget/BubbleImpl;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 34
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->None:Landroid/widget/BubbleStyle$ArrowDirection;

    iput-object v0, p0, Landroid/widget/BubbleImpl;->mDrawableArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 35
    sget-object v0, Landroid/widget/BubbleStyle$ArrowPosPolicy;->TargetCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    iput-object v0, p0, Landroid/widget/BubbleImpl;->mArrowPosPolicy:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/BubbleImpl;->mArrowToViewRef:Ljava/lang/ref/WeakReference;

    .line 37
    iput v2, p0, Landroid/widget/BubbleImpl;->mArrowToViewId:I

    .line 38
    iput v1, p0, Landroid/widget/BubbleImpl;->mArrowHeight:F

    .line 39
    iput v1, p0, Landroid/widget/BubbleImpl;->mArrowWidth:F

    .line 40
    iput v1, p0, Landroid/widget/BubbleImpl;->mArrowPosDelta:F

    .line 41
    iput v1, p0, Landroid/widget/BubbleImpl;->mCornerTopLeftRadius:F

    .line 42
    iput v1, p0, Landroid/widget/BubbleImpl;->mCornerTopRightRadius:F

    .line 43
    iput v1, p0, Landroid/widget/BubbleImpl;->mCornerBottomLeftRadius:F

    .line 44
    iput v1, p0, Landroid/widget/BubbleImpl;->mCornerBottomRightRadius:F

    .line 45
    iput v2, p0, Landroid/widget/BubbleImpl;->mPaddingLeftOffset:I

    iput v2, p0, Landroid/widget/BubbleImpl;->mPaddingTopOffset:I

    iput v2, p0, Landroid/widget/BubbleImpl;->mPaddingRightOffset:I

    iput v2, p0, Landroid/widget/BubbleImpl;->mPaddingBottomOffset:I

    .line 46
    const/high16 v0, -0x34000000    # -3.3554432E7f

    iput v0, p0, Landroid/widget/BubbleImpl;->mFillColor:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/BubbleImpl;->mBorderColor:I

    .line 48
    iput v1, p0, Landroid/widget/BubbleImpl;->mBorderWidth:F

    .line 49
    iput v1, p0, Landroid/widget/BubbleImpl;->mFillPadding:F

    .line 50
    new-instance v0, Landroid/widget/BubbleImpl$1;

    invoke-direct {v0, p0}, Landroid/widget/BubbleImpl$1;-><init>(Landroid/widget/BubbleImpl;)V

    iput-object v0, p0, Landroid/widget/BubbleImpl;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 303
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/BubbleImpl;->mLocation:[I

    .line 304
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/BubbleImpl;->mRectTo:Landroid/graphics/Rect;

    .line 305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/BubbleImpl;->mRectSelf:Landroid/graphics/Rect;

    .line 29
    return-void
.end method

.method private findGlobalViewById(I)Landroid/view/View;
    .locals 4
    .param p1, "viewId"    # I

    .prologue
    const/4 v3, 0x0

    .line 365
    if-nez p1, :cond_0

    .line 366
    return-object v3

    .line 369
    :cond_0
    iget-object v1, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    .line 370
    .local v1, "vp":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 371
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1    # "vp":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 372
    .restart local v1    # "vp":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, "arrowToView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 374
    return-object v0

    .line 378
    .end local v0    # "arrowToView":Landroid/view/View;
    :cond_2
    return-object v3
.end method

.method private static getAutoArrowDirection(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/widget/BubbleStyle$ArrowDirection;
    .locals 5
    .param p0, "bubble"    # Landroid/graphics/Rect;
    .param p1, "target"    # Landroid/graphics/Rect;

    .prologue
    .line 403
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    if-nez v1, :cond_3

    .line 404
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 405
    .local v0, "offset":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 406
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_0

    .line 407
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Down:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v1

    .line 408
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_3

    .line 409
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Up:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v1

    .line 411
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 412
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-gez v1, :cond_2

    .line 413
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Right:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v1

    .line 414
    :cond_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_3

    .line 415
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->Left:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v1

    .line 420
    .end local v0    # "offset":Landroid/graphics/Point;
    :cond_3
    sget-object v1, Landroid/widget/BubbleStyle$ArrowDirection;->None:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v1
.end method

.method private setArrowToRef(Landroid/view/View;)V
    .locals 3
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-object v2, p0, Landroid/widget/BubbleImpl;->mArrowToViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 383
    iget-object v2, p0, Landroid/widget/BubbleImpl;->mArrowToViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 384
    .local v0, "oldTargetView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 385
    iget-object v2, p0, Landroid/widget/BubbleImpl;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 389
    .end local v0    # "oldTargetView":Landroid/view/View;
    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_1
    iput-object v1, p0, Landroid/widget/BubbleImpl;->mArrowToViewRef:Ljava/lang/ref/WeakReference;

    .line 390
    if-eqz p1, :cond_2

    .line 391
    iget-object v1, p0, Landroid/widget/BubbleImpl;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 381
    :cond_2
    return-void
.end method


# virtual methods
.method public getArrowDirection()Landroid/widget/BubbleStyle$ArrowDirection;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/BubbleImpl;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v0
.end method

.method public getArrowHeight()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/widget/BubbleImpl;->mArrowHeight:F

    return v0
.end method

.method public getArrowPosDelta()F
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Landroid/widget/BubbleImpl;->mArrowPosDelta:F

    return v0
.end method

.method public getArrowPosPolicy()Landroid/widget/BubbleStyle$ArrowPosPolicy;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/widget/BubbleImpl;->mArrowPosPolicy:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    return-object v0
.end method

.method public getArrowTo()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Landroid/widget/BubbleImpl;->mArrowToViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/BubbleImpl;->mArrowToViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method public getArrowWidth()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Landroid/widget/BubbleImpl;->mArrowWidth:F

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/widget/BubbleImpl;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/widget/BubbleImpl;->mBorderWidth:F

    return v0
.end method

.method public getCornerBottomLeftRadius()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/widget/BubbleImpl;->mCornerBottomLeftRadius:F

    return v0
.end method

.method public getCornerBottomRightRadius()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Landroid/widget/BubbleImpl;->mCornerBottomRightRadius:F

    return v0
.end method

.method public getCornerTopLeftRadius()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Landroid/widget/BubbleImpl;->mCornerTopLeftRadius:F

    return v0
.end method

.method public getCornerTopRightRadius()F
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Landroid/widget/BubbleImpl;->mCornerTopRightRadius:F

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Landroid/widget/BubbleImpl;->mFillColor:I

    return v0
.end method

.method public getFillPadding()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Landroid/widget/BubbleImpl;->mFillPadding:F

    return v0
.end method

.method public getPaddingBottom()I
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Landroid/widget/BubbleImpl;->mHolderCallback:Landroid/widget/BubbleCallback;

    invoke-interface {v0}, Landroid/widget/BubbleCallback;->getSuperPaddingBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/BubbleImpl;->mPaddingBottomOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingLeft()I
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Landroid/widget/BubbleImpl;->mHolderCallback:Landroid/widget/BubbleCallback;

    invoke-interface {v0}, Landroid/widget/BubbleCallback;->getSuperPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/BubbleImpl;->mPaddingLeftOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingRight()I
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Landroid/widget/BubbleImpl;->mHolderCallback:Landroid/widget/BubbleCallback;

    invoke-interface {v0}, Landroid/widget/BubbleCallback;->getSuperPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/BubbleImpl;->mPaddingRightOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingTop()I
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Landroid/widget/BubbleImpl;->mHolderCallback:Landroid/widget/BubbleCallback;

    invoke-interface {v0}, Landroid/widget/BubbleCallback;->getSuperPaddingTop()I

    move-result v0

    iget v1, p0, Landroid/widget/BubbleImpl;->mPaddingTopOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method init(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 58
    iput-object p1, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    .line 59
    check-cast p1, Landroid/widget/BubbleCallback;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Landroid/widget/BubbleImpl;->mHolderCallback:Landroid/widget/BubbleCallback;

    .line 61
    if-eqz p3, :cond_0

    .line 62
    sget-object v2, Lcom/android/internal/R$styleable;->BubbleViewStyle:[I

    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 63
    .local v1, "ta":Landroid/content/res/TypedArray;
    sget-object v2, Landroid/widget/BubbleStyle$ArrowDirection;->Auto:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v2}, Landroid/widget/BubbleStyle$ArrowDirection;->getValue()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Landroid/widget/BubbleStyle$ArrowDirection;->valueOf(I)Landroid/widget/BubbleStyle$ArrowDirection;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/BubbleImpl;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 64
    invoke-static {v7}, Landroid/util/BubbleViewUtils;->dp2px(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mArrowHeight:F

    .line 65
    invoke-static {v8}, Landroid/util/BubbleViewUtils;->dp2px(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mArrowWidth:F

    .line 66
    sget-object v2, Landroid/widget/BubbleStyle$ArrowPosPolicy;->TargetCenter:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    invoke-virtual {v2}, Landroid/widget/BubbleStyle$ArrowPosPolicy;->getValue()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {v2}, Landroid/widget/BubbleStyle$ArrowPosPolicy;->valueOf(I)Landroid/widget/BubbleStyle$ArrowPosPolicy;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/BubbleImpl;->mArrowPosPolicy:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .line 67
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mArrowPosDelta:F

    .line 68
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mArrowToViewId:I

    .line 70
    invoke-static {v6}, Landroid/util/BubbleViewUtils;->dp2px(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 71
    .local v0, "radius":F
    iput v0, p0, Landroid/widget/BubbleImpl;->mCornerBottomRightRadius:F

    iput v0, p0, Landroid/widget/BubbleImpl;->mCornerBottomLeftRadius:F

    iput v0, p0, Landroid/widget/BubbleImpl;->mCornerTopRightRadius:F

    iput v0, p0, Landroid/widget/BubbleImpl;->mCornerTopLeftRadius:F

    .line 72
    iget v2, p0, Landroid/widget/BubbleImpl;->mCornerTopLeftRadius:F

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mCornerTopLeftRadius:F

    .line 73
    iget v2, p0, Landroid/widget/BubbleImpl;->mCornerTopLeftRadius:F

    invoke-virtual {v1, v8, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mCornerTopRightRadius:F

    .line 74
    iget v2, p0, Landroid/widget/BubbleImpl;->mCornerTopLeftRadius:F

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mCornerBottomLeftRadius:F

    .line 75
    iget v2, p0, Landroid/widget/BubbleImpl;->mCornerTopLeftRadius:F

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mCornerBottomRightRadius:F

    .line 77
    const/high16 v2, -0x34000000    # -3.3554432E7f

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mFillColor:I

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mFillPadding:F

    .line 79
    const/16 v2, 0xe

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mBorderColor:I

    .line 80
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mBorderWidth:F

    .line 81
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    .end local v0    # "radius":F
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v2, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v5}, Landroid/widget/BubbleImpl;->updateDrawable(IIZ)V

    .line 57
    return-void
.end method

.method public requestUpdateBubble()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/BubbleImpl;->updateDrawable(IIZ)V

    .line 360
    return-void
.end method

.method public setArrowDirection(Landroid/widget/BubbleStyle$ArrowDirection;)V
    .locals 0
    .param p1, "arrowDirection"    # Landroid/widget/BubbleStyle$ArrowDirection;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/widget/BubbleImpl;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 87
    return-void
.end method

.method public setArrowHeight(F)V
    .locals 0
    .param p1, "arrowHeight"    # F

    .prologue
    .line 98
    iput p1, p0, Landroid/widget/BubbleImpl;->mArrowHeight:F

    .line 97
    return-void
.end method

.method public setArrowPosDelta(F)V
    .locals 0
    .param p1, "delta"    # F

    .prologue
    .line 122
    iput p1, p0, Landroid/widget/BubbleImpl;->mArrowPosDelta:F

    .line 121
    return-void
.end method

.method public setArrowPosPolicy(Landroid/widget/BubbleStyle$ArrowPosPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .prologue
    .line 117
    iput-object p1, p0, Landroid/widget/BubbleImpl;->mArrowPosPolicy:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    .line 116
    return-void
.end method

.method public setArrowTo(I)V
    .locals 1
    .param p1, "targetViewId"    # I

    .prologue
    .line 135
    iput p1, p0, Landroid/widget/BubbleImpl;->mArrowToViewId:I

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/BubbleImpl;->setArrowToRef(Landroid/view/View;)V

    .line 134
    return-void
.end method

.method public setArrowTo(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/widget/BubbleImpl;->mArrowToViewId:I

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/BubbleImpl;->setArrowToRef(Landroid/view/View;)V

    .line 140
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setArrowWidth(F)V
    .locals 0
    .param p1, "arrowWidth"    # F

    .prologue
    .line 108
    iput p1, p0, Landroid/widget/BubbleImpl;->mArrowWidth:F

    .line 107
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1, "borderColor"    # I

    .prologue
    .line 167
    iput p1, p0, Landroid/widget/BubbleImpl;->mBorderColor:I

    .line 166
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0
    .param p1, "borderWidth"    # F

    .prologue
    .line 180
    iput p1, p0, Landroid/widget/BubbleImpl;->mBorderWidth:F

    .line 179
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 214
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/BubbleImpl;->setCornerRadius(FFFF)V

    .line 213
    return-void
.end method

.method public setCornerRadius(FFFF)V
    .locals 0
    .param p1, "topLeft"    # F
    .param p2, "topRight"    # F
    .param p3, "bottomRight"    # F
    .param p4, "bottomLeft"    # F

    .prologue
    .line 206
    iput p1, p0, Landroid/widget/BubbleImpl;->mCornerTopLeftRadius:F

    .line 207
    iput p2, p0, Landroid/widget/BubbleImpl;->mCornerTopRightRadius:F

    .line 208
    iput p3, p0, Landroid/widget/BubbleImpl;->mCornerBottomRightRadius:F

    .line 209
    iput p4, p0, Landroid/widget/BubbleImpl;->mCornerBottomLeftRadius:F

    .line 205
    return-void
.end method

.method public setFillColor(I)V
    .locals 0
    .param p1, "fillColor"    # I

    .prologue
    .line 154
    iput p1, p0, Landroid/widget/BubbleImpl;->mFillColor:I

    .line 153
    return-void
.end method

.method public setFillPadding(F)V
    .locals 0
    .param p1, "fillPadding"    # F

    .prologue
    .line 193
    iput p1, p0, Landroid/widget/BubbleImpl;->mFillPadding:F

    .line 192
    return-void
.end method

.method public setPadding(IIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-object v2, p0, Landroid/widget/BubbleImpl;->mHolderCallback:Landroid/widget/BubbleCallback;

    if-nez v2, :cond_0

    .line 241
    return-void

    .line 244
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-gt v2, v3, :cond_2

    .line 245
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 246
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    .line 247
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "recomputePadding"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 247
    if-eqz v2, :cond_1

    .line 249
    const-string/jumbo v2, "BubbleImpl"

    const-string/jumbo v3, "Called setPadding by View on old Android platform"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Landroid/widget/BubbleImpl;->mHolderCallback:Landroid/widget/BubbleCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/widget/BubbleCallback;->setSuperPadding(IIII)V

    .line 251
    return-void

    .line 246
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "i":I
    .end local v1    # "stack":[Ljava/lang/StackTraceElement;
    :cond_2
    iput v4, p0, Landroid/widget/BubbleImpl;->mPaddingBottomOffset:I

    iput v4, p0, Landroid/widget/BubbleImpl;->mPaddingRightOffset:I

    iput v4, p0, Landroid/widget/BubbleImpl;->mPaddingTopOffset:I

    iput v4, p0, Landroid/widget/BubbleImpl;->mPaddingLeftOffset:I

    .line 257
    invoke-static {}, Landroid/widget/BubbleImpl;->-getandroid-widget-BubbleStyle$ArrowDirectionSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Landroid/widget/BubbleImpl;->mDrawableArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 276
    :goto_1
    :pswitch_0
    iget-object v2, p0, Landroid/widget/BubbleImpl;->mHolderCallback:Landroid/widget/BubbleCallback;

    .line 277
    iget v3, p0, Landroid/widget/BubbleImpl;->mPaddingLeftOffset:I

    add-int/2addr v3, p1

    .line 278
    iget v4, p0, Landroid/widget/BubbleImpl;->mPaddingTopOffset:I

    add-int/2addr v4, p2

    .line 279
    iget v5, p0, Landroid/widget/BubbleImpl;->mPaddingRightOffset:I

    add-int/2addr v5, p3

    .line 280
    iget v6, p0, Landroid/widget/BubbleImpl;->mPaddingBottomOffset:I

    add-int/2addr v6, p4

    .line 276
    invoke-interface {v2, v3, v4, v5, v6}, Landroid/widget/BubbleCallback;->setSuperPadding(IIII)V

    .line 239
    return-void

    .line 259
    :pswitch_1
    iget v2, p0, Landroid/widget/BubbleImpl;->mPaddingLeftOffset:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/BubbleImpl;->mArrowHeight:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mPaddingLeftOffset:I

    goto :goto_1

    .line 262
    :pswitch_2
    iget v2, p0, Landroid/widget/BubbleImpl;->mPaddingTopOffset:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/BubbleImpl;->mArrowHeight:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mPaddingTopOffset:I

    goto :goto_1

    .line 265
    :pswitch_3
    iget v2, p0, Landroid/widget/BubbleImpl;->mPaddingRightOffset:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/BubbleImpl;->mArrowHeight:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mPaddingRightOffset:I

    goto :goto_1

    .line 268
    :pswitch_4
    iget v2, p0, Landroid/widget/BubbleImpl;->mPaddingBottomOffset:I

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/BubbleImpl;->mArrowHeight:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/BubbleImpl;->mPaddingBottomOffset:I

    goto :goto_1

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method updateDrawable(IIZ)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "drawImmediately"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "arrowToOffsetX":I
    const/4 v1, 0x0

    .line 311
    .local v1, "arrowToOffsetY":I
    invoke-virtual {p0}, Landroid/widget/BubbleImpl;->getArrowTo()Landroid/view/View;

    move-result-object v2

    .line 313
    .local v2, "arrowToView":Landroid/view/View;
    if-nez v2, :cond_0

    iget v3, p0, Landroid/widget/BubbleImpl;->mArrowToViewId:I

    if-eqz v3, :cond_0

    .line 314
    iget v3, p0, Landroid/widget/BubbleImpl;->mArrowToViewId:I

    invoke-direct {p0, v3}, Landroid/widget/BubbleImpl;->findGlobalViewById(I)Landroid/view/View;

    move-result-object v2

    .line 315
    invoke-direct {p0, v2}, Landroid/widget/BubbleImpl;->setArrowToRef(Landroid/view/View;)V

    .line 318
    :cond_0
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    iput-object v3, p0, Landroid/widget/BubbleImpl;->mDrawableArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 319
    if-eqz v2, :cond_2

    .line 320
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 321
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mRectTo:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/widget/BubbleImpl;->mLocation:[I

    aget v4, v4, v9

    iget-object v5, p0, Landroid/widget/BubbleImpl;->mLocation:[I

    aget v5, v5, v10

    .line 322
    iget-object v6, p0, Landroid/widget/BubbleImpl;->mLocation:[I

    aget v6, v6, v9

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/BubbleImpl;->mLocation:[I

    aget v7, v7, v10

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 321
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 324
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/BubbleImpl;->mLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 325
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mRectSelf:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/widget/BubbleImpl;->mLocation:[I

    aget v4, v4, v9

    iget-object v5, p0, Landroid/widget/BubbleImpl;->mLocation:[I

    aget v5, v5, v10

    iget-object v6, p0, Landroid/widget/BubbleImpl;->mLocation:[I

    aget v6, v6, v9

    add-int/2addr v6, p1

    iget-object v7, p0, Landroid/widget/BubbleImpl;->mLocation:[I

    aget v7, v7, v10

    add-int/2addr v7, p2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 327
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mDrawableArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    sget-object v4, Landroid/widget/BubbleStyle$ArrowDirection;->Auto:Landroid/widget/BubbleStyle$ArrowDirection;

    if-ne v3, v4, :cond_1

    .line 328
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mRectSelf:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/widget/BubbleImpl;->mRectTo:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Landroid/widget/BubbleImpl;->getAutoArrowDirection(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/widget/BubbleStyle$ArrowDirection;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/BubbleImpl;->mDrawableArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    .line 331
    :cond_1
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mRectTo:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Landroid/widget/BubbleImpl;->mRectSelf:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v0, v3, v4

    .line 332
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mRectTo:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Landroid/widget/BubbleImpl;->mRectSelf:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v1, v3, v4

    .line 334
    :cond_2
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/BubbleImpl;->setPadding(IIII)V

    .line 336
    if-eqz p3, :cond_3

    .line 337
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    invoke-virtual {v3, p1, p2}, Landroid/widget/BubbleDrawable;->resetRect(II)V

    .line 338
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    iget v4, p0, Landroid/widget/BubbleImpl;->mCornerTopLeftRadius:F

    iget v5, p0, Landroid/widget/BubbleImpl;->mCornerTopRightRadius:F

    iget v6, p0, Landroid/widget/BubbleImpl;->mCornerBottomRightRadius:F

    iget v7, p0, Landroid/widget/BubbleImpl;->mCornerBottomLeftRadius:F

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/BubbleDrawable;->setCornerRadius(FFFF)V

    .line 339
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    iget v4, p0, Landroid/widget/BubbleImpl;->mFillColor:I

    invoke-virtual {v3, v4}, Landroid/widget/BubbleDrawable;->setFillColor(I)V

    .line 340
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    iget v4, p0, Landroid/widget/BubbleImpl;->mBorderWidth:F

    invoke-virtual {v3, v4}, Landroid/widget/BubbleDrawable;->setBorderWidth(F)V

    .line 341
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    iget v4, p0, Landroid/widget/BubbleImpl;->mFillPadding:F

    invoke-virtual {v3, v4}, Landroid/widget/BubbleDrawable;->setFillPadding(F)V

    .line 342
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    iget v4, p0, Landroid/widget/BubbleImpl;->mBorderColor:I

    invoke-virtual {v3, v4}, Landroid/widget/BubbleDrawable;->setBorderColor(I)V

    .line 343
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    iget-object v4, p0, Landroid/widget/BubbleImpl;->mDrawableArrowDirection:Landroid/widget/BubbleStyle$ArrowDirection;

    invoke-virtual {v3, v4}, Landroid/widget/BubbleDrawable;->setArrowDirection(Landroid/widget/BubbleStyle$ArrowDirection;)V

    .line 344
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    iget-object v4, p0, Landroid/widget/BubbleImpl;->mArrowPosPolicy:Landroid/widget/BubbleStyle$ArrowPosPolicy;

    invoke-virtual {v3, v4}, Landroid/widget/BubbleDrawable;->setArrowPosPolicy(Landroid/widget/BubbleStyle$ArrowPosPolicy;)V

    .line 345
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/widget/BubbleDrawable;->setArrowTo(FF)V

    .line 346
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    iget v4, p0, Landroid/widget/BubbleImpl;->mArrowPosDelta:F

    invoke-virtual {v3, v4}, Landroid/widget/BubbleDrawable;->setArrowPosDelta(F)V

    .line 347
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    iget v4, p0, Landroid/widget/BubbleImpl;->mArrowHeight:F

    invoke-virtual {v3, v4}, Landroid/widget/BubbleDrawable;->setArrowHeight(F)V

    .line 348
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    iget v4, p0, Landroid/widget/BubbleImpl;->mArrowWidth:F

    invoke-virtual {v3, v4}, Landroid/widget/BubbleDrawable;->setArrowWidth(F)V

    .line 349
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    invoke-virtual {v3}, Landroid/widget/BubbleDrawable;->updateShapes()V

    .line 350
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    .line 351
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :cond_3
    :goto_0
    return-void

    .line 354
    :cond_4
    iget-object v3, p0, Landroid/widget/BubbleImpl;->mParentView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/BubbleImpl;->mBubbleDrawable:Landroid/widget/BubbleDrawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
