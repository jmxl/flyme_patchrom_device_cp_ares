.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field private mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private mLastWallpaperDisplayOffsetX:I

.field private mLastWallpaperDisplayOffsetY:I

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperX:F

.field private mLastWallpaperXStep:F

.field private mLastWallpaperY:F

.field private mLastWallpaperYStep:F

.field private mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperAnimLayerAdjustment:I

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/high16 v3, -0x80000000

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 66
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 69
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 73
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 74
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 75
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 76
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 77
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 78
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 95
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 104
    new-instance v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 107
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 106
    return-void
.end method

.method private findLowestWindowOnScreen(Lcom/android/server/wm/WindowList;)I
    .locals 4
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 791
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 792
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 793
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 794
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 795
    return v0

    .line 792
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    const v3, 0x7fffffff

    return v3
.end method

.method private findWallpaperTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 13
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    const/4 v11, 0x0

    .line 478
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v10, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 479
    .local v8, "winAnimator":Lcom/android/server/wm/WindowAnimator;
    invoke-virtual {p2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 480
    const/4 v7, 0x0

    .line 481
    .local v7, "w":Lcom/android/server/wm/WindowState;
    const/4 v9, -0x1

    .line 482
    .local v9, "windowDetachedI":I
    const/4 v5, 0x0

    .line 483
    .local v5, "resetTopWallpaper":Z
    const/4 v2, 0x0

    .line 484
    .local v2, "inFreeformSpace":Z
    const/4 v4, 0x0

    .line 485
    .local v4, "replacing":Z
    const/4 v3, 0x0

    .line 487
    .local v3, "keyguardGoingAwayWithWallpaper":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 488
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 489
    .local v7, "w":Lcom/android/server/wm/WindowState;
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7dd

    if-ne v10, v12, :cond_2

    .line 490
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_0

    if-eqz v5, :cond_1

    .line 491
    :cond_0
    invoke-virtual {p2, v7, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;I)V

    .line 492
    const/4 v5, 0x0

    .line 487
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 496
    :cond_2
    const/4 v5, 0x1

    .line 497
    iget-object v10, v8, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v7, v10, :cond_3

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_3

    .line 500
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v10, :cond_3

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v10, :cond_1

    .line 509
    :cond_3
    if-nez v2, :cond_4

    .line 510
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    .line 511
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v6, :cond_7

    iget v10, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_7

    const/4 v2, 0x1

    .line 514
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_4
    :goto_2
    iget-boolean v10, v7, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    or-int/2addr v4, v10

    .line 515
    .local v4, "replacing":Z
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_8

    .line 516
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    .line 515
    :goto_3
    or-int/2addr v3, v10

    .line 518
    .local v3, "keyguardGoingAwayWithWallpaper":Z
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x100000

    and-int/2addr v10, v12

    if-eqz v10, :cond_9

    const/4 v0, 0x1

    .line 519
    .local v0, "hasWallpaper":Z
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v10, v7, :cond_5

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 521
    :cond_5
    invoke-virtual {p2, v7, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 522
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v7, v10, :cond_6

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v10

    if-nez v10, :cond_1

    .line 535
    .end local v0    # "hasWallpaper":Z
    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_6
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_b

    .line 536
    return-void

    .line 511
    .restart local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v4    # "replacing":Z
    :cond_8
    move v10, v11

    .line 515
    goto :goto_3

    .restart local v3    # "keyguardGoingAwayWithWallpaper":Z
    :cond_9
    move v0, v11

    .line 518
    goto :goto_4

    .line 530
    .restart local v0    # "hasWallpaper":Z
    :cond_a
    iget-object v10, v8, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v7, v10, :cond_1

    .line 531
    move v9, v1

    goto :goto_1

    .line 539
    .end local v0    # "hasWallpaper":Z
    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_b
    if-ltz v9, :cond_d

    .line 542
    invoke-virtual {p2, v7, v9}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 477
    :cond_c
    :goto_5
    return-void

    .line 543
    :cond_d
    if-nez v2, :cond_e

    if-eqz v4, :cond_f

    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_f

    .line 548
    :cond_e
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    iget v11, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    invoke-virtual {p2, v10, v11}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    goto :goto_5

    .line 550
    :cond_f
    if-eqz v3, :cond_c

    .line 554
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    iget v11, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    invoke-virtual {p2, v10, v11}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    goto :goto_5
.end method

.method private isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x1

    .line 141
    if-eqz p1, :cond_1

    .line 142
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z
    .locals 11
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    const/4 v10, 0x0

    .line 561
    const/4 v6, 0x0

    .line 562
    .local v6, "targetChanged":Z
    iget-object v7, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 563
    .local v7, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget v8, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 565
    .local v8, "wallpaperTargetIndex":I
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v9, v7, :cond_9

    .line 566
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v9, v7, :cond_9

    .line 570
    :cond_0
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 571
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 573
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 574
    .local v5, "oldW":Lcom/android/server/wm/WindowState;
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 575
    const/4 v6, 0x1

    .line 579
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 580
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    .line 581
    .local v2, "oldAnim":Z
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    .line 584
    .local v0, "foundAnim":Z
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 585
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 588
    .local v3, "oldI":I
    if-ltz v3, :cond_2

    .line 590
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_3

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v9, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 592
    :goto_0
    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_4

    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v9, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 600
    :goto_1
    if-le v8, v3, :cond_5

    .line 604
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 605
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 607
    move-object v7, v5

    .line 608
    move v8, v3

    .line 616
    :goto_2
    if-eqz v1, :cond_1

    if-eqz v4, :cond_6

    .line 622
    :cond_1
    if-ne v1, v4, :cond_2

    .line 623
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 647
    .end local v0    # "foundAnim":Z
    .end local v2    # "oldAnim":Z
    .end local v3    # "oldI":I
    .end local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_2
    :goto_3
    invoke-virtual {p2, v7, v8}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 648
    return v6

    .line 590
    .restart local v0    # "foundAnim":Z
    .restart local v2    # "oldAnim":Z
    .restart local v3    # "oldI":I
    .restart local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_3
    const/4 v1, 0x0

    .local v1, "newTargetHidden":Z
    goto :goto_0

    .line 592
    .end local v1    # "newTargetHidden":Z
    :cond_4
    const/4 v4, 0x0

    .local v4, "oldTargetHidden":Z
    goto :goto_1

    .line 613
    .end local v4    # "oldTargetHidden":Z
    :cond_5
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 614
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 621
    :cond_6
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_3

    .line 624
    :cond_7
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 625
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 622
    if-eqz v9, :cond_2

    .line 630
    :cond_8
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_3

    .line 636
    .end local v0    # "foundAnim":Z
    .end local v2    # "oldAnim":Z
    .end local v3    # "oldI":I
    .end local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_9
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_2

    .line 638
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v9

    if-nez v9, :cond_2

    .line 640
    :cond_a
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 641
    iput-object v10, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 642
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 643
    const/4 v6, 0x1

    goto :goto_3
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    return-void
.end method

.method adjustWallpaperWindows()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, -0x80000000

    const/4 v7, 0x0

    .line 802
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iput-boolean v9, v6, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 804
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 807
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 808
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z

    move-result v1

    .line 809
    .local v1, "targetChanged":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTargetByLayer(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z

    move-result v2

    .line 810
    .local v2, "visible":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v3, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 811
    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget v4, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 813
    .local v4, "wallpaperTargetIndex":I
    if-nez v3, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v6, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_5

    .line 816
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v3, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 817
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget v6, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    add-int/lit8 v4, v6, 0x1

    .line 825
    .end local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v2, :cond_3

    .line 826
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 827
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 828
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 830
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 831
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 832
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 834
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v6, v8, :cond_2

    .line 835
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 837
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v6, v8, :cond_3

    .line 838
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 842
    :cond_3
    invoke-virtual {p0, v5, v3, v4, v2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsPlacement(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;IZ)Z

    move-result v0

    .line 845
    .local v0, "changed":Z
    if-eqz v1, :cond_4

    .line 849
    :cond_4
    return v0

    .line 821
    .end local v0    # "changed":Z
    .restart local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_5
    if-lez v4, :cond_6

    .line 822
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    check-cast v3, Lcom/android/server/wm/WindowState;

    .restart local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method clearLastWallpaperTimeoutTime()V
    .locals 2

    .prologue
    .line 436
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 435
    return-void
.end method

.method dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/android/server/wm/WindowState;
    .param p2, "visible"    # Z

    .prologue
    .line 234
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v1, p2, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 234
    if-eqz p2, :cond_1

    .line 236
    :cond_0
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 241
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p2}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/high16 v1, -0x80000000

    .line 908
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 909
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 910
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLowerWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 911
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUpperWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 913
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 914
    const-string/jumbo v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 915
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    if-ne v0, v1, :cond_2

    .line 916
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_3

    .line 917
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 918
    const-string/jumbo v0, "mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 919
    const-string/jumbo v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 907
    :cond_3
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 924
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 925
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 926
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Wallpaper tokens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 928
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 929
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Wallpaper #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 930
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 931
    if-eqz p3, :cond_0

    .line 932
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 933
    const-string/jumbo v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 927
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 935
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 923
    .end local v0    # "i":I
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_1
    return-void
.end method

.method getAnimLayerAdjustment()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    return v0
.end method

.method getLowerWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getUpperWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method hideDeferredWallpapersIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 187
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 184
    :cond_0
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "winGoingAway"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v8, 0x0

    .line 192
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_1

    .line 193
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v7, p1, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_1

    .line 194
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 199
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 200
    return-void

    .line 203
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v7, p1, :cond_5

    const/4 v5, 0x1

    .line 204
    .local v5, "wasDeferred":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_7

    .line 205
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 206
    .local v3, "token":Lcom/android/server/wm/WindowToken;
    iget-object v7, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_6

    .line 207
    iget-object v7, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 208
    .local v4, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 209
    .local v6, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v7, :cond_3

    if-eqz v5, :cond_4

    .line 210
    :cond_3
    const-string/jumbo v7, "hideWallpapers"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v4, v8}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 212
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 213
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_4

    .line 214
    iget v7, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 206
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 203
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "token":Lcom/android/server/wm/WindowToken;
    .end local v4    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v5    # "wasDeferred":Z
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "wasDeferred":Z
    goto :goto_0

    .line 222
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "token":Lcom/android/server/wm/WindowToken;
    :cond_6
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 204
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 191
    .end local v2    # "j":I
    .end local v3    # "token":Lcom/android/server/wm/WindowToken;
    :cond_7
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWallpaperTargetAnimating()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isWallpaperVisible()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method processWallpaperDrawPendingTimeout()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 853
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-ne v0, v1, :cond_0

    .line 854
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 857
    return v1

    .line 859
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 903
    return-void
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 13
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_1

    .line 352
    :cond_0
    move/from16 v8, p7

    .line 353
    .local v8, "doWait":Z
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .end local p7    # "sync":Z
    .local v7, "curTokenNdx":I
    :goto_0
    if-ltz v7, :cond_4

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    iget-object v12, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 355
    .local v12, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .local v11, "wallpaperNdx":I
    :goto_1
    if-ltz v11, :cond_3

    .line 356
    invoke-virtual {v12, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 358
    .local v10, "wallpaper":Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    const/16 p7, 0x0

    .line 355
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 351
    .end local v7    # "curTokenNdx":I
    .end local v8    # "doWait":Z
    .end local v10    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v11    # "wallpaperNdx":I
    .end local v12    # "windows":Lcom/android/server/wm/WindowList;
    .restart local p7    # "sync":Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    .line 372
    .end local p7    # "sync":Z
    :cond_2
    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 353
    .restart local v7    # "curTokenNdx":I
    .restart local v8    # "doWait":Z
    .restart local v11    # "wallpaperNdx":I
    .restart local v12    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 367
    .end local v11    # "wallpaperNdx":I
    .end local v12    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    if-eqz v8, :cond_2

    goto :goto_3

    .line 362
    .restart local v10    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v11    # "wallpaperNdx":I
    .restart local v12    # "windows":Lcom/android/server/wm/WindowList;
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method setAnimLayerAdjustment(Lcom/android/server/wm/WindowState;I)V
    .locals 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "adj"    # I

    .prologue
    .line 460
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1

    .line 461
    :cond_0
    return-void

    .line 465
    :cond_1
    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    .line 466
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 467
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    iget-object v3, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 468
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_2

    .line 469
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 470
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p2

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 468
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 466
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 459
    .end local v1    # "j":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    return-void
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 340
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_1

    .line 341
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 342
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 339
    :cond_1
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .prologue
    .line 330
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 332
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 333
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 334
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 329
    :cond_1
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z
    .locals 24
    .param p1, "wallpaperWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "dw"    # I
    .param p3, "dh"    # I
    .param p4, "sync"    # Z

    .prologue
    .line 248
    const/16 v17, 0x0

    .line 251
    .local v17, "rawChanged":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_b

    const/high16 v13, 0x3f800000    # 1.0f

    .line 252
    .local v13, "defaultWallpaperX":F
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    move/from16 v20, v0

    .line 253
    .local v20, "wpx":F
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    move/from16 v21, v0

    .line 254
    .local v21, "wpxs":F
    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int v11, v4, p2

    .line 255
    .local v11, "availw":I
    if-lez v11, :cond_e

    int-to-float v4, v11

    mul-float v4, v4, v20

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v0, v4

    move/from16 v16, v0

    .line 256
    .local v16, "offset":I
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    add-int v16, v16, v4

    .line 259
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v0, v16

    if-eq v4, v0, :cond_f

    const/4 v12, 0x1

    .line 260
    .local v12, "changed":Z
    :goto_4
    if-eqz v12, :cond_1

    .line 262
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 264
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v4, v4, v20

    if-nez v4, :cond_2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v4, v4, v21

    if-eqz v4, :cond_3

    .line 265
    :cond_2
    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 266
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 267
    const/16 v17, 0x1

    .line 270
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    move/from16 v22, v0

    .line 271
    .local v22, "wpy":F
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    move/from16 v23, v0

    .line 272
    .local v23, "wpys":F
    :goto_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v10, v4, p3

    .line 273
    .local v10, "availh":I
    if-lez v10, :cond_12

    int-to-float v4, v10

    mul-float v4, v4, v22

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v0, v4

    move/from16 v16, v0

    .line 274
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_4

    .line 275
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    add-int v16, v16, v4

    .line 277
    :cond_4
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v0, v16

    if-eq v4, v0, :cond_5

    .line 279
    const/4 v12, 0x1

    .line 280
    .local v12, "changed":Z
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 282
    .end local v12    # "changed":Z
    :cond_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v4, v4, v22

    if-nez v4, :cond_6

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v4, v4, v23

    if-eqz v4, :cond_7

    .line 283
    :cond_6
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 284
    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 285
    const/16 v17, 0x1

    .line 288
    :cond_7
    if-eqz v17, :cond_a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_a

    .line 294
    if-eqz p4, :cond_8

    .line 295
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 297
    :cond_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 298
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 299
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v9, p4

    .line 297
    invoke-interface/range {v4 .. v9}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 300
    if-eqz p4, :cond_a

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_a

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 303
    .local v18, "start":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v4, v4, v18

    if-gez v4, :cond_9

    .line 308
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    :goto_8
    const-wide/16 v4, 0x96

    add-long v4, v4, v18

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    .line 313
    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 318
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 325
    .end local v18    # "start":J
    :cond_a
    :goto_9
    return v12

    .line 251
    .end local v10    # "availh":I
    .end local v11    # "availw":I
    .end local v13    # "defaultWallpaperX":F
    .end local v16    # "offset":I
    .end local v20    # "wpx":F
    .end local v21    # "wpxs":F
    .end local v22    # "wpy":F
    .end local v23    # "wpys":F
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "defaultWallpaperX":F
    goto/16 :goto_0

    .line 252
    :cond_c
    move/from16 v20, v13

    .restart local v20    # "wpx":F
    goto/16 :goto_1

    .line 253
    :cond_d
    const/high16 v21, -0x40800000    # -1.0f

    .restart local v21    # "wpxs":F
    goto/16 :goto_2

    .line 255
    .restart local v11    # "availw":I
    :cond_e
    const/16 v16, 0x0

    .restart local v16    # "offset":I
    goto/16 :goto_3

    .line 259
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 270
    .local v12, "changed":Z
    :cond_10
    const/high16 v22, 0x3f000000    # 0.5f

    .restart local v22    # "wpy":F
    goto/16 :goto_5

    .line 271
    :cond_11
    const/high16 v23, -0x40800000    # -1.0f

    .restart local v23    # "wpys":F
    goto/16 :goto_6

    .line 273
    .restart local v10    # "availh":I
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 321
    .end local v12    # "changed":Z
    :catch_0
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 309
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v18    # "start":J
    :catch_1
    move-exception v15

    .local v15, "e":Ljava/lang/InterruptedException;
    goto :goto_8
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 13
    .param p1, "changingTarget"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    .prologue
    const/high16 v12, -0x80000000

    const/4 v11, 0x0

    .line 376
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 377
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 381
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 382
    .local v4, "dw":I
    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 384
    .local v1, "dh":I
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 385
    .local v5, "target":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_6

    .line 386
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_8

    .line 387
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 391
    :cond_1
    :goto_0
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_9

    .line 392
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 396
    :cond_2
    :goto_1
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v10, v12, :cond_a

    .line 397
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 401
    :cond_3
    :goto_2
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v10, v12, :cond_b

    .line 402
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 406
    :cond_4
    :goto_3
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_c

    .line 407
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 411
    :cond_5
    :goto_4
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_d

    .line 412
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 418
    :cond_6
    :goto_5
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .end local p2    # "sync":Z
    .local v0, "curTokenNdx":I
    :goto_6
    if-ltz v0, :cond_f

    .line 419
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    iget-object v9, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 420
    .local v9, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, "wallpaperNdx":I
    :goto_7
    if-ltz v7, :cond_e

    .line 421
    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 422
    .local v6, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v6, v4, v1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 423
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 424
    .local v8, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 427
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(Landroid/graphics/Point;)V

    .line 429
    const/4 p2, 0x0

    .line 420
    .end local v8    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    .line 388
    .end local v0    # "curTokenNdx":I
    .end local v6    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v7    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    .restart local p2    # "sync":Z
    :cond_8
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_1

    .line 389
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_0

    .line 393
    :cond_9
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_2

    .line 394
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_1

    .line 398
    :cond_a
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v10, v12, :cond_3

    .line 399
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_2

    .line 403
    :cond_b
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v10, v12, :cond_4

    .line 404
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_3

    .line 408
    :cond_c
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_5

    .line 409
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_4

    .line 413
    :cond_d
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    .line 414
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_5

    .line 418
    .end local p2    # "sync":Z
    .restart local v0    # "curTokenNdx":I
    .restart local v7    # "wallpaperNdx":I
    .restart local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 375
    .end local v7    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_f
    return-void
.end method

.method updateWallpaperVisibility()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 154
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 155
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    .line 159
    .local v6, "visible":Z
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 160
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 161
    .local v4, "dw":I
    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 163
    .local v1, "dh":I
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .local v0, "curTokenNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 164
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 165
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v10, v6, :cond_1

    .line 166
    if-eqz v6, :cond_3

    move v10, v11

    :goto_1
    iput-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 169
    iput-boolean v12, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 172
    :cond_1
    iget-object v9, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 173
    .local v9, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .local v8, "wallpaperNdx":I
    :goto_2
    if-ltz v8, :cond_4

    .line 174
    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 175
    .local v7, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_2

    .line 176
    invoke-virtual {p0, v7, v4, v1, v11}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 179
    :cond_2
    invoke-virtual {p0, v7, v6}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 173
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .end local v7    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v8    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    move v10, v12

    .line 166
    goto :goto_1

    .line 163
    .restart local v8    # "wallpaperNdx":I
    .restart local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 153
    .end local v5    # "token":Lcom/android/server/wm/WindowToken;
    .end local v8    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5
    return-void
.end method

.method updateWallpaperWindowsPlacement(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;IZ)Z
    .locals 18
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p3, "wallpaperTargetIndex"    # I
    .param p4, "visible"    # Z

    .prologue
    .line 705
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 706
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    iget v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 707
    .local v6, "dw":I
    iget v4, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 711
    .local v4, "dh":I
    const/4 v2, 0x0

    .line 712
    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v3, v15, -0x1

    .end local p2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .local v3, "curTokenNdx":I
    :goto_0
    if-ltz v3, :cond_9

    .line 713
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    .line 714
    .local v10, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v15, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v0, p4

    if-ne v15, v0, :cond_0

    .line 717
    if-eqz p4, :cond_2

    const/4 v15, 0x0

    :goto_1
    iput-boolean v15, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 719
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 722
    :cond_0
    iget-object v11, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 723
    .local v11, "tokenWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v11}, Lcom/android/server/wm/WindowList;->size()I

    move-result v15

    add-int/lit8 v14, v15, -0x1

    .local v14, "wallpaperNdx":I
    :goto_2
    if-ltz v14, :cond_8

    .line 724
    invoke-virtual {v11, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 726
    .local v13, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_1

    .line 727
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6, v4, v15}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 731
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v13, v1}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 733
    iget-object v15, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 734
    iget v0, v13, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 733
    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 739
    move-object/from16 v0, p2

    if-ne v13, v0, :cond_4

    .line 740
    add-int/lit8 p3, p3, -0x1

    .line 741
    if-lez p3, :cond_3

    .line 742
    add-int/lit8 v15, p3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowState;

    .line 723
    :goto_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 717
    .end local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .end local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v14    # "wallpaperNdx":I
    :cond_2
    const/4 v15, 0x1

    goto :goto_1

    .line 742
    .restart local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .restart local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v14    # "wallpaperNdx":I
    :cond_3
    const/16 p2, 0x0

    .local p2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto :goto_3

    .line 748
    .end local p2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 749
    .local v8, "oldIndex":I
    if-ltz v8, :cond_5

    .line 752
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 753
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 754
    move/from16 v0, p3

    if-ge v8, v0, :cond_5

    .line 755
    add-int/lit8 p3, p3, -0x1

    .line 762
    :cond_5
    const/4 v7, 0x0

    .line 763
    .local v7, "insertionIndex":I
    if-eqz p4, :cond_7

    if-eqz p2, :cond_7

    .line 764
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 765
    .local v12, "type":I
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 766
    .local v9, "privateFlags":I
    and-int/lit16 v15, v9, 0x400

    if-nez v15, :cond_6

    .line 767
    const/16 v15, 0x7ed

    if-ne v12, v15, :cond_7

    .line 768
    :cond_6
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 769
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WallpaperController;->findLowestWindowOnScreen(Lcom/android/server/wm/WindowList;)I

    move-result v16

    .line 768
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 777
    .end local v9    # "privateFlags":I
    .end local v12    # "type":I
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v13}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 779
    const/4 v2, 0x1

    goto :goto_3

    .line 712
    .end local v7    # "insertionIndex":I
    .end local v8    # "oldIndex":I
    .end local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 783
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    .end local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .end local v14    # "wallpaperNdx":I
    :cond_9
    return v2
.end method

.method updateWallpaperWindowsTargetByLayer(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z
    .locals 7
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    const/4 v5, 0x0

    .line 654
    iget-object v2, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 655
    .local v2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget v3, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 656
    .local v3, "wallpaperTargetIndex":I
    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 658
    .local v1, "visible":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 661
    invoke-direct {p0, v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    .line 667
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_0

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_0

    .line 668
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v5, v5, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 666
    :cond_0
    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    .line 670
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v0, v5, 0x3e8

    .line 677
    .local v0, "maxLayer":I
    :goto_1
    if-lez v3, :cond_2

    .line 678
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 679
    .local v4, "wb":Lcom/android/server/wm/WindowState;
    iget v5, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v5, v0, :cond_5

    .line 680
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eq v5, v2, :cond_5

    .line 681
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_1

    .line 682
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eq v5, v6, :cond_5

    .line 683
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 684
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v5, :cond_4

    .line 697
    .end local v0    # "maxLayer":I
    .end local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_2
    invoke-virtual {p2, v2, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 698
    return v1

    .end local v1    # "visible":Z
    :cond_3
    move v1, v5

    .line 656
    goto :goto_0

    .line 685
    .restart local v0    # "maxLayer":I
    .restart local v1    # "visible":Z
    .restart local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_4
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v5, v6, :cond_2

    .line 690
    :cond_5
    move-object v2, v4

    .line 691
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 442
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->notifyAll()V

    .line 439
    :cond_0
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 450
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->notifyAll()V

    .line 447
    :cond_0
    return-void
.end method

.method wallpaperTransitionReady()Z
    .locals 12

    .prologue
    const/16 v11, 0x27

    const/4 v10, 0x0

    .line 863
    const/4 v3, 0x1

    .line 864
    .local v3, "transitionReady":Z
    const/4 v5, 0x1

    .line 865
    .local v5, "wallpaperReady":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 866
    .local v0, "curTokenIndex":I
    :goto_0
    if-ltz v0, :cond_4

    .line 865
    if-eqz v5, :cond_4

    .line 867
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 868
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "curWallpaperIndex":I
    :goto_1
    if-ltz v1, :cond_3

    .line 870
    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 871
    .local v4, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-boolean v6, v4, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 869
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 873
    :cond_1
    const/4 v5, 0x0

    .line 874
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 876
    const/4 v3, 0x0

    .line 878
    :cond_2
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-nez v6, :cond_3

    .line 879
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 880
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 881
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 882
    const-wide/16 v8, 0x1f4

    .line 881
    invoke-virtual {v6, v11, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 866
    .end local v4    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 891
    .end local v1    # "curWallpaperIndex":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_4
    if-eqz v5, :cond_5

    .line 892
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 893
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 896
    :cond_5
    return v3
.end method
