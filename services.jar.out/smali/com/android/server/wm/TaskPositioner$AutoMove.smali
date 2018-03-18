.class Lcom/android/server/wm/TaskPositioner$AutoMove;
.super Ljava/lang/Object;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoMove"
.end annotation


# static fields
.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_NONE:I = 0x0

.field private static final MOVE_RIGHT:I = 0x4

.field private static final MOVE_TOP:I = 0x2


# instance fields
.field private mX:I

.field private mY:I

.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/TaskPositioner$AutoMove;)[[I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner$AutoMove;->getMultiPoint()[[I

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/TaskPositioner;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput p2, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mX:I

    .line 586
    iput p3, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mY:I

    .line 584
    return-void
.end method

.method private getMultiPoint()[[I
    .locals 13

    .prologue
    .line 590
    new-instance v0, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->-get2(Lcom/android/server/wm/TaskPositioner;)Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v0, v11, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 592
    .local v0, "bound":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)F

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 593
    .local v5, "offsetLeft":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)F

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 594
    .local v7, "offsetTop":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->-get6(Lcom/android/server/wm/TaskPositioner;)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 595
    .local v6, "offsetRight":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->-get11(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->-get7(Lcom/android/server/wm/TaskPositioner;)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 597
    .local v4, "offsetBottom":I
    new-instance v2, Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v5

    iget v10, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v7

    .line 598
    iget v11, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v6

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v4

    .line 597
    invoke-direct {v2, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 600
    .local v2, "innerRect":Landroid/graphics/Rect;
    iget v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mX:I

    iget v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mY:I

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 601
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    sub-int v3, v9, v10

    .line 602
    .local v3, "min":I
    const/4 v1, 0x1

    .line 604
    .local v1, "direction":I
    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_0

    .line 605
    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int v3, v9, v10

    .line 606
    const/4 v1, 0x2

    .line 608
    :cond_0
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_1

    .line 609
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v3, v9, v10

    .line 610
    const/4 v1, 0x4

    .line 612
    :cond_1
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_2

    .line 613
    const/16 v1, 0x8

    .line 624
    .end local v3    # "min":I
    :cond_2
    :goto_0
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    const/4 v11, 0x2

    filled-new-array {v10, v11}, [I

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    .line 625
    .local v8, "outPoint":[[I
    const/4 v9, 0x0

    aget-object v9, v8, v9

    iget v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mX:I

    const/4 v11, 0x0

    aput v10, v9, v11

    .line 626
    const/4 v9, 0x0

    aget-object v9, v8, v9

    iget v10, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mY:I

    const/4 v11, 0x1

    aput v10, v9, v11

    .line 628
    const/4 v9, 0x1

    aget-object v10, v8, v9

    and-int/lit8 v9, v1, 0x5

    if-nez v9, :cond_8

    .line 629
    iget v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mX:I

    .line 628
    :goto_1
    const/4 v11, 0x0

    aput v9, v10, v11

    .line 632
    const/4 v9, 0x1

    aget-object v10, v8, v9

    and-int/lit8 v9, v1, 0xa

    if-nez v9, :cond_a

    .line 633
    iget v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mY:I

    .line 632
    :goto_2
    const/4 v11, 0x1

    aput v9, v10, v11

    .line 636
    return-object v8

    .line 617
    .end local v1    # "direction":I
    .end local v8    # "outPoint":[[I
    :cond_3
    iget v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mX:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    if-ge v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_3
    or-int/lit8 v1, v9, 0x0

    .line 618
    .restart local v1    # "direction":I
    iget v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mX:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_5

    const/4 v9, 0x4

    :goto_4
    or-int/2addr v1, v9

    .line 619
    iget v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mY:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_6

    const/4 v9, 0x2

    :goto_5
    or-int/2addr v1, v9

    .line 620
    iget v9, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->mY:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    if-le v9, v10, :cond_7

    const/16 v9, 0x8

    :goto_6
    or-int/2addr v1, v9

    goto :goto_0

    .line 617
    .end local v1    # "direction":I
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 618
    .restart local v1    # "direction":I
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    .line 619
    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    .line 620
    :cond_7
    const/4 v9, 0x0

    goto :goto_6

    .line 630
    .restart local v8    # "outPoint":[[I
    :cond_8
    and-int/lit8 v9, v1, 0x1

    if-nez v9, :cond_9

    .line 631
    iget v9, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_9
    iget v9, v2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 634
    :cond_a
    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    .line 635
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_b
    iget v9, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2
.end method


# virtual methods
.method public setAutoBound(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const-wide/16 v8, 0x20

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/TaskPositioner;->-wrap0(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/wm/TaskPositioner;->-set0(Lcom/android/server/wm/TaskPositioner;Z)Z

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get8(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v2}, Lcom/android/server/wm/TaskPositioner;->-get9(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 644
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get9(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    const-string/jumbo v0, "wm.TaskPositioner.resizeStack"

    .line 645
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 648
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->-get5(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 649
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$AutoMove;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->-get10(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v2

    .line 648
    const/4 v1, 0x5

    .line 649
    const/4 v3, 0x1

    .line 650
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 651
    const/4 v6, -0x1

    .line 648
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 639
    :cond_0
    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 652
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
