.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$AutoMove;,
        Lcom/android/server/wm/TaskPositioner$CtrlType;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    }
.end annotation


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field static final SIDE_MARGIN_DIP:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mCurrentDimSide:I

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field private mDragEnded:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mResizing:Z

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSideMargin:I

.field private mStartDragX:F

.field private mStartDragY:F

.field private mTask:Lcom/android/server/wm/Task;

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/TaskPositioner;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/TaskPositioner;)Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/TaskPositioner;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/wm/TaskPositioner;)F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/TaskPositioner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/TaskPositioner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/wm/TaskPositioner;II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->startAutoMove(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    .line 66
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 114
    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 115
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 248
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 247
    return-void
.end method

.method private endDragLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 405
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 404
    return-void
.end method

.method private getDimSide(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 510
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v2, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_1

    .line 513
    :cond_0
    return v3

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 517
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 518
    const/4 v0, 0x1

    return v0

    .line 520
    :cond_2
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_3

    .line 521
    return v2

    .line 524
    :cond_3
    return v3
.end method

.method private notifyMoveLocked(FF)Z
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v11, 0x0

    .line 415
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v9, :cond_4

    .line 417
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float v9, p1, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 418
    .local v1, "deltaX":I
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float v9, p2, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 419
    .local v2, "deltaY":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 420
    .local v4, "left":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v8, v9, Landroid/graphics/Rect;->top:I

    .line 421
    .local v8, "top":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v7, v9, Landroid/graphics/Rect;->right:I

    .line 422
    .local v7, "right":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 423
    .local v0, "bottom":I
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    .line 424
    add-int v9, v4, v1

    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v10, v7, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 426
    :cond_0
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_1

    .line 427
    add-int v9, v8, v2

    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v10, v0, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 429
    :cond_1
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_2

    .line 430
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v9, v4

    add-int v10, v7, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 432
    :cond_2
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_3

    .line 433
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    add-int/2addr v9, v8

    add-int v10, v0, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 435
    :cond_3
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v4, v8, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 436
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 437
    return v11

    .line 441
    .end local v0    # "bottom":I
    .end local v1    # "deltaX":I
    .end local v2    # "deltaY":I
    .end local v4    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    :cond_4
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v9, v9, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 445
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    move-result v9

    if-nez v9, :cond_5

    .line 446
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->inset(II)V

    .line 449
    :cond_5
    const/4 v3, 0x0

    .line 450
    .local v3, "dragEnded":Z
    float-to-int v5, p1

    .line 451
    .local v5, "nX":I
    float-to-int v6, p2

    .line 452
    .local v6, "nY":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_6

    .line 456
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    invoke-static {p1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 457
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-static {p2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 461
    :cond_6
    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(II)V

    .line 462
    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskPositioner;->updateDimLayerVisibility(I)V

    .line 463
    return v3
.end method

.method private showDimLayer()V
    .locals 5

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 529
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 535
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 536
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v1

    .line 537
    const-wide/16 v2, 0x0

    .line 536
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 527
    return-void

    .line 531
    :cond_1
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private startAutoMove(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v6, 0x3e800000    # 0.25f

    .line 565
    new-instance v0, Lcom/android/server/wm/TaskPositioner$AutoMove;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/TaskPositioner$AutoMove;-><init>(Lcom/android/server/wm/TaskPositioner;II)V

    .line 566
    .local v0, "autoMove":Lcom/android/server/wm/TaskPositioner$AutoMove;
    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner$AutoMove;->-wrap0(Lcom/android/server/wm/TaskPositioner$AutoMove;)[[I

    move-result-object v1

    .line 567
    .local v1, "multiPoint":[[I
    const-string/jumbo v3, "autoBound"

    invoke-static {v0, v3, v1}, Landroid/animation/ObjectAnimator;->ofMultiInt(Ljava/lang/Object;Ljava/lang/String;[[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 568
    .local v2, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 569
    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 570
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 564
    return-void
.end method

.method private updateDimLayerVisibility(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPositioner;->getDimSide(I)I

    move-result v0

    .line 486
    .local v0, "dimSide":I
    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-ne v0, v1, :cond_0

    .line 487
    return-void

    .line 490
    :cond_0
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    .line 493
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 494
    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    if-nez v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 499
    :goto_0
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 483
    return-void

    .line 497
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->showDimLayer()V

    goto :goto_0
.end method

.method private updateWindowDragBounds(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 466
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    int-to-float v1, p2

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, p2

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method


# virtual methods
.method public dimFullscreen()Z
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioner;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 555
    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method isFullscreen()Z
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method register(Landroid/view/Display;)V
    .locals 12
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const-wide v10, 0x12a05f200L

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 259
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_0

    .line 260
    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Task positioner already registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 264
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 265
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 266
    sget-object v2, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 267
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 268
    aget-object v2, v0, v8

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 269
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, v7}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 271
    new-instance v2, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 272
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mChoreographer:Landroid/view/Choreographer;

    .line 271
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 274
    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v2, v7}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 275
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 279
    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 280
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    .line 279
    invoke-direct {v2, v3, v7, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 281
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    sget-object v3, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 282
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 283
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 284
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 285
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v3, 0x7e0

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 286
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 288
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 289
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 290
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v8, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 291
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 292
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 293
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 294
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 295
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 296
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 299
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 302
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 303
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 304
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 305
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 306
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 307
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 313
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    .line 315
    new-instance v2, Lcom/android/server/wm/DimLayer;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    const-string/jumbo v5, "TaskPositioner"

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 316
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x64

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    .line 317
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x30

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 318
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v3, 0x20

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 320
    iput-boolean v6, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 254
    return-void
.end method

.method startDragLocked(Lcom/android/server/wm/WindowState;ZFF)V
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "resize"    # Z
    .param p3, "startX"    # F
    .param p4, "startY"    # F

    .prologue
    .line 365
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 366
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 367
    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 368
    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDockedInEffect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 385
    :goto_0
    if-eqz p2, :cond_4

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 387
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 390
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    .line 393
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_3

    .line 396
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 398
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 360
    return-void

    .line 382
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method unregister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_0

    .line 329
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Task positioner not registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    .line 336
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 339
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 340
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 342
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 343
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 344
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 348
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 350
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCurrentDimSide:I

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    .line 323
    return-void
.end method
