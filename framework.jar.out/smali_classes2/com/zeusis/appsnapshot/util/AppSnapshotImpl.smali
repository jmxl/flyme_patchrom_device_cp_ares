.class public Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;
.super Ljava/lang/Object;
.source "AppSnapshotImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;,
        Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;,
        Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScreenShootAdapter;,
        Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;
    }
.end annotation


# static fields
.field private static final DEVIATION:I = 0x32

.field private static final DOWN:I = 0x1

.field private static final MAX_SCROLL_TIME:I = 0x8

.field private static final MOVE:I = 0x2

.field private static final SHOOT_SCREEN:I = 0x4

.field public static final SNAPSHOT_OCCUPIED_FAILED:I = 0x1

.field public static final SNAPSHOT_OOM_FAILED:I = 0x2

.field public static final SNAPSHOT_REPEAT_FAILTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppSnapshotImpl"

.field private static final UP:I = 0x3


# instance fields
.field private context:Landroid/content/Context;

.field private currentFingerY:F

.field private endY:F

.field private forceStop:Z

.field private isEnd:Z

.field private isFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private moveTimesCount:I

.field private picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

.field private pointViewInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private prepared:Z

.field private rootView:Landroid/view/View;

.field private screenHeight:I

.field private screenShootAdapter:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScreenShootAdapter;

.field private screenShooting:Z

.field private screenWidth:I

.field private scrollShootListener:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

.field private startY:F

.field private touchX:F

.field private touchY:F


# direct methods
.method static synthetic -get0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F
    .locals 1

    iget v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->endY:F

    return v0
.end method

.method static synthetic -get1(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->forceStop:Z

    return v0
.end method

.method static synthetic -get10(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F
    .locals 1

    iget v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->startY:F

    return v0
.end method

.method static synthetic -get11(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)F
    .locals 1

    iget v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchX:F

    return v0
.end method

.method static synthetic -get2(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isEnd:Z

    return v0
.end method

.method static synthetic -get3(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)I
    .locals 1

    iget v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->moveTimesCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Lcom/zeusis/appsnapshot/util/PicComposeHandler;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->pointViewInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)I
    .locals 1

    iget v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    return v0
.end method

.method static synthetic -get9(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;
    .locals 1

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->scrollShootListener:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;F)F
    .locals 0

    iput p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->currentFingerY:F

    return p1
.end method

.method static synthetic -set1(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isEnd:Z

    return p1
.end method

.method static synthetic -set2(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isFinished:Z

    return p1
.end method

.method static synthetic -set3(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->prepared:Z

    return p1
.end method

.method static synthetic -set4(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenShooting:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "top"    # I
    .param p2, "end"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenShot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Ljava/util/ArrayList;)I
    .locals 1
    .param p1, "list"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->findMaxDistance(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Ljava/util/ArrayList;Landroid/view/View;FF)V
    .locals 0
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->findPointViews(Ljava/util/ArrayList;Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "list"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->getPointViewsEndY(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "list"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->getPointViewsStartY(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->startScroll()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenShooting:Z

    .line 43
    iput-boolean v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isEnd:Z

    .line 44
    iput-boolean v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->forceStop:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isFinished:Z

    .line 46
    iput-boolean v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->prepared:Z

    .line 48
    iput v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->moveTimesCount:I

    .line 50
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchX:F

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->pointViewInfoList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;

    invoke-direct {v1, p0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$1;-><init>(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->mHandler:Landroid/os/Handler;

    .line 58
    const-string/jumbo v0, "AppSnapshotImpl"

    const-string/jumbo v1, " ScreenScrollShootHelper  create "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->context:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->rootView:Landroid/view/View;

    .line 57
    return-void
.end method

.method private findMaxDistance(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 471
    const-string/jumbo v5, "AppSnapshotImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "findMaxDistance start  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "distance":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 474
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;

    .line 475
    .local v2, "info":Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;
    const-string/jumbo v5, "AppSnapshotImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "findMaxDistance info name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  distance : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->distance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget v5, v2, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->distance:I

    if-ge v0, v5, :cond_0

    .line 477
    iget v0, v2, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->distance:I

    .line 473
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v2    # "info":Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x2

    if-le v5, v8, :cond_7

    .line 481
    const-string/jumbo v5, "AppSnapshotImpl"

    const-string/jumbo v8, "findMaxDistance doubleCheck"

    invoke-static {v5, v8}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v3, 0x1

    .line 483
    .local v3, "reDistance1":Z
    const/4 v4, 0x1

    .line 484
    .local v4, "reDistance2":Z
    const/4 v1, 0x0

    .end local v3    # "reDistance1":Z
    .end local v4    # "reDistance2":Z
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 485
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;

    .line 486
    .restart local v2    # "info":Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;
    if-nez v1, :cond_4

    .line 487
    iget v5, v2, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->distance:I

    if-ne v0, v5, :cond_2

    move v5, v6

    :goto_2
    and-int/2addr v3, v5

    .line 488
    .local v3, "reDistance1":Z
    iget v5, v2, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->startY:I

    if-ne v0, v5, :cond_3

    move v5, v6

    :goto_3
    and-int/2addr v3, v5

    .line 484
    .end local v3    # "reDistance1":Z
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v5, v7

    .line 487
    goto :goto_2

    .restart local v3    # "reDistance1":Z
    :cond_3
    move v5, v7

    .line 488
    goto :goto_3

    .line 490
    .end local v3    # "reDistance1":Z
    :cond_4
    iget v5, v2, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->distance:I

    if-nez v5, :cond_5

    move v5, v6

    :goto_5
    and-int/2addr v4, v5

    .local v4, "reDistance2":Z
    goto :goto_4

    .end local v4    # "reDistance2":Z
    :cond_5
    move v5, v7

    goto :goto_5

    .line 493
    .end local v2    # "info":Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;
    :cond_6
    and-int v5, v3, v4

    if-eqz v5, :cond_7

    .line 494
    const-string/jumbo v5, "AppSnapshotImpl"

    const-string/jumbo v6, "findMaxDistance doubleCheck reset distance to 0"

    invoke-static {v5, v6}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x0

    .line 498
    :cond_7
    return v0
.end method

.method private findPointView(Landroid/view/View;FF)Landroid/view/View;
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 517
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 518
    nop

    nop

    .line 519
    .local v3, "rootView":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 520
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 521
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 522
    .local v0, "child":Landroid/view/View;
    float-to-int v4, p2

    float-to-int v5, p3

    invoke-direct {p0, v0, v4, v5}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->inRangeOfView(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 523
    invoke-direct {p0, v0, p2, p3}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->findPointView(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v4

    return-object v4

    .line 520
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 527
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "rootView":Landroid/view/ViewGroup;
    :cond_1
    return-object p1
.end method

.method private findPointViews(Ljava/util/ArrayList;Landroid/view/View;FF)V
    .locals 8
    .param p2, "root"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;",
            ">;",
            "Landroid/view/View;",
            "FF)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;>;"
    const/4 v2, 0x0

    .line 428
    .local v2, "hasChildIn":Z
    instance-of v6, p2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p2

    .line 429
    nop

    nop

    .line 430
    .local v5, "rootView":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 431
    .local v1, "childCount":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 432
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, "child":Landroid/view/View;
    float-to-int v6, p3

    float-to-int v7, p4

    invoke-direct {p0, v0, v6, v7}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->inRangeOfView(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 434
    const/4 v2, 0x1

    .line 435
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->findPointViews(Ljava/util/ArrayList;Landroid/view/View;FF)V

    .line 431
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 439
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v3    # "i":I
    .end local v5    # "rootView":Landroid/view/ViewGroup;
    :cond_1
    if-nez v2, :cond_2

    .line 440
    new-instance v4, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;-><init>(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;)V

    .line 441
    .local v4, "info":Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;
    iput-object p2, v4, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    .line 442
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v4    # "info":Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;
    :cond_2
    return-void
.end method

.method private getLocationY(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 543
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 544
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 545
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method private getMoveDistance(Landroid/view/View;I)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startTop"    # I

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->getLocationY(Landroid/view/View;)I

    move-result v0

    .line 535
    .local v0, "endPointViewTop":I
    const-string/jumbo v1, "AppSnapshotImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " endPointViewTop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  startTop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    sub-int v1, p2, v0

    return v1
.end method

.method private getPointViewsEndY(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;>;"
    const-string/jumbo v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPointViewsEndY start  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 461
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;

    .line 462
    .local v1, "info":Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;
    iget-object v2, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->getLocationY(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->endY:I

    .line 463
    const-string/jumbo v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPointViewsEndY  info.endY  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->endY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v2, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    iput v2, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->scrollEnd:I

    .line 465
    const-string/jumbo v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPointViewsEndY  info.scrollEnd  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->scrollEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget v2, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->startY:I

    iget v3, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->endY:I

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->scrollEnd:I

    iget v4, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->scrollStart:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->distance:I

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v1    # "info":Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;
    :cond_0
    return-void
.end method

.method private getPointViewsStartY(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;>;"
    const-string/jumbo v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPointViewsStartY start  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 450
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;

    .line 451
    .local v1, "info":Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;
    iget-object v2, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->getLocationY(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->startY:I

    .line 452
    const-string/jumbo v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPointViewsStartY  info.startY  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->startY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v2, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    iput v2, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->scrollStart:I

    .line 454
    const-string/jumbo v2, "AppSnapshotImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPointViewsStartY  info.scrollStart  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;->scrollStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "info":Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$PointViewInfo;
    :cond_0
    return-void
.end method

.method private inRangeOfView(Landroid/view/View;II)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 552
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 553
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 554
    aget v1, v0, v4

    .line 555
    .local v1, "viewX":I
    aget v2, v0, v5

    .line 556
    .local v2, "viewY":I
    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    if-le p2, v3, :cond_1

    .line 557
    :cond_0
    return v4

    .line 556
    :cond_1
    if-lt p3, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    if-gt p3, v3, :cond_0

    .line 560
    return v5
.end method

.method private initScreenSize()V
    .locals 3

    .prologue
    .line 595
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->context:Landroid/content/Context;

    .line 596
    const-string/jumbo v2, "window"

    .line 595
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 597
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenWidth:I

    .line 598
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    .line 594
    return-void
.end method

.method private prepare()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    const-string/jumbo v0, "AppSnapshotImpl"

    const-string/jumbo v1, " prepare "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-boolean v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isFinished:Z

    if-nez v0, :cond_1

    .line 188
    const-string/jumbo v0, "AppSnapshotImpl"

    const-string/jumbo v1, "ScreenScrollShootHelper is not finished , prepare failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->scrollShootListener:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->scrollShootListener:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

    invoke-interface {v0, v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;->onFailed(I)V

    .line 192
    :cond_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->initData()V

    .line 195
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    invoke-direct {v0}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;-><init>()V

    iput-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    .line 198
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    new-instance v1, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$2;

    invoke-direct {v1, p0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$2;-><init>(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)V

    invoke-virtual {v0, v1}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->setOnFinishListener(Lcom/zeusis/appsnapshot/util/PicComposeHandler$OnFinishListener;)V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    invoke-virtual {v0}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->prepare()V

    .line 211
    iput v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->moveTimesCount:I

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->prepared:Z

    .line 185
    return-void
.end method

.method private screenShot(II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "top"    # I
    .param p2, "end"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->rootView:Landroid/view/View;

    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenShootAdapter:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScreenShootAdapter;

    iget v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    iget v3, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenWidth:I

    iget v4, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenWidth:I

    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    if-le v4, v5, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/zeusis/appsnapshot/util/ScreenShootUtil;->getScreenShootPic(Landroid/view/View;Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScreenShootAdapter;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private sendEventMsg(IF)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "y"    # F

    .prologue
    .line 415
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 417
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 418
    iget-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    return-void
.end method

.method private startScroll()V
    .locals 12

    .prologue
    const/high16 v11, 0x41200000    # 10.0f

    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    .line 304
    const-string/jumbo v5, "AppSnapshotImpl"

    const-string/jumbo v6, " startScroll "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->startY:F

    iget v6, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->endY:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x430c0000    # 140.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v0, v5

    .line 306
    .local v0, "distance":F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 307
    :cond_0
    const-string/jumbo v5, "AppSnapshotImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " distance  v : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v3, v5, :cond_2

    .line 310
    iget-boolean v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isEnd:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->forceStop:Z

    if-eqz v5, :cond_3

    .line 311
    :cond_1
    iget-boolean v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isEnd:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    if-eqz v5, :cond_2

    .line 312
    iput-boolean v10, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isEnd:Z

    .line 313
    iget-object v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    invoke-virtual {v5}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->forceStop()V

    .line 302
    :cond_2
    return-void

    .line 317
    :cond_3
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->startY:F

    iput v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    .line 319
    const-string/jumbo v5, "AppSnapshotImpl"

    const-string/jumbo v6, " touch down"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v10, v5}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 323
    :goto_1
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    iget v6, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->endY:F

    const/high16 v7, 0x41000000    # 8.0f

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 324
    iget-boolean v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->forceStop:Z

    if-eqz v5, :cond_6

    .line 336
    :cond_4
    move v4, v0

    .line 338
    .local v4, "v":F
    :goto_2
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    iget v6, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->endY:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 339
    iget-boolean v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->forceStop:Z

    if-eqz v5, :cond_7

    .line 355
    :cond_5
    iget-boolean v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->forceStop:Z

    if-eqz v5, :cond_9

    .line 357
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    sub-float/2addr v5, v11

    iget v6, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->endY:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_8

    .line 358
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    sub-float v2, v5, v11

    .line 359
    .local v2, "forceTouchEnd":F
    :goto_3
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    cmpl-float v5, v5, v2

    if-lez v5, :cond_a

    .line 360
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v8, v5}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 361
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    .line 363
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 327
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "forceTouchEnd":F
    .end local v4    # "v":F
    :cond_6
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v8, v5}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 328
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    sub-float/2addr v5, v0

    iput v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    .line 330
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 331
    :catch_1
    move-exception v1

    .line 332
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 342
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "v":F
    :cond_7
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v8, v5}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 347
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    .line 349
    const-wide/16 v6, 0xa

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 350
    :catch_2
    move-exception v1

    .line 351
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 370
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_8
    :goto_4
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    iget v6, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->endY:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    .line 371
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v8, v5}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 372
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    .line 374
    const-wide/16 v6, 0xa

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 375
    :catch_3
    move-exception v1

    .line 376
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 382
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_9
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->endY:F

    iput v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    .line 383
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    invoke-direct {p0, v8, v5}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 387
    :cond_a
    const-wide/16 v6, 0x96

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5

    .line 392
    :goto_5
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->moveTimesCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->moveTimesCount:I

    .line 395
    const-string/jumbo v5, "AppSnapshotImpl"

    const-string/jumbo v6, " touch up"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    const/4 v6, 0x3

    invoke-direct {p0, v6, v5}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->sendEventMsg(IF)V

    .line 399
    iput-boolean v10, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenShooting:Z

    .line 400
    :goto_6
    iget-boolean v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenShooting:Z

    if-eqz v5, :cond_b

    .line 402
    const-wide/16 v6, 0x5

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 403
    :catch_4
    move-exception v1

    .line 404
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 388
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v1

    .line 389
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 309
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public forceStop()V
    .locals 2

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isFinished:Z

    if-eqz v0, :cond_0

    .line 578
    return-void

    .line 580
    :cond_0
    const-string/jumbo v0, "AppSnapshotImpl"

    const-string/jumbo v1, " do forceStop "

    invoke-static {v0, v1}, Lcom/zeusis/appsnapshot/util/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->forceStop:Z

    .line 576
    return-void
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 174
    const-string/jumbo v0, "AppSnapshotImpl"

    const-string/jumbo v1, " initData "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isFinished:Z

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->initScreenSize()V

    .line 179
    iget v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->startY:F

    .line 180
    iget v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    iput v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->endY:F

    .line 181
    iget v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->startY:F

    iput v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    .line 182
    iget v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->touchY:F

    iput v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->currentFingerY:F

    .line 172
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-boolean v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    if-nez v0, :cond_1

    .line 296
    :cond_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    invoke-virtual {v0}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->release()V

    .line 299
    iput-object v1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    .line 294
    return-void
.end method

.method public scrollShootStart(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "fullScreenShoot"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 226
    const-string/jumbo v2, "AppSnapshotImpl"

    const-string/jumbo v5, " scrollShootStart "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-boolean v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isFinished:Z

    if-nez v2, :cond_1

    .line 228
    const-string/jumbo v2, "AppSnapshotImpl"

    const-string/jumbo v3, "ScreenScrollShootHelper is not finished , scrollShootStart failed "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->scrollShootListener:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->scrollShootListener:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

    invoke-interface {v2, v4}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;->onFailed(I)V

    .line 232
    :cond_0
    return-void

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->prepare()V

    .line 236
    iget-boolean v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->prepared:Z

    if-nez v2, :cond_2

    .line 237
    const-string/jumbo v2, "AppSnapshotImpl"

    const-string/jumbo v3, "ScreenScrollShootHelper is not prepared , scrollShootStart failed "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 242
    :cond_2
    iput-boolean v4, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isFinished:Z

    .line 243
    iput-boolean v4, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->isEnd:Z

    .line 244
    iput-boolean v4, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->forceStop:Z

    .line 245
    iput v4, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->moveTimesCount:I

    .line 247
    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->scrollShootListener:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

    if-eqz v2, :cond_3

    .line 248
    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->scrollShootListener:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

    invoke-interface {v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;->onStart()V

    .line 251
    :cond_3
    const-string/jumbo v5, "AppSnapshotImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " fullScreenShoot == null : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_9

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "bt":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_a

    .line 255
    move-object v0, p1

    .line 259
    .end local v0    # "bt":Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 260
    const-string/jumbo v2, "AppSnapshotImpl"

    const-string/jumbo v5, " fullScreenShoot == null  do screenShot "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    invoke-direct {p0, v4, v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenShot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 264
    :cond_5
    iget v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenWidth:I

    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    if-le v2, v5, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_6

    .line 265
    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/ScreenShootUtil;->getRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenWidth:I

    if-lt v2, v5, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    if-ge v2, v5, :cond_8

    .line 269
    :cond_7
    const-string/jumbo v2, "AppSnapshotImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " screenWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " screenHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bt.width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bt.getHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenWidth:I

    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 271
    .local v0, "bt":Landroid/graphics/Bitmap;
    const-string/jumbo v2, "AppSnapshotImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screenWith : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  screenHigh : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 273
    .local v1, "mCanvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->rootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 274
    iget v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenWidth:I

    iget v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    if-le v2, v5, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_8

    .line 275
    invoke-static {v0}, Lcom/zeusis/appsnapshot/util/ScreenShootUtil;->getRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    .end local v0    # "bt":Landroid/graphics/Bitmap;
    .end local v1    # "mCanvas":Landroid/graphics/Canvas;
    :cond_8
    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    invoke-virtual {v2, v0}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->setFirstPicInfo(Landroid/graphics/Bitmap;)V

    .line 280
    iget-object v5, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->picComposeHandler:Lcom/zeusis/appsnapshot/util/PicComposeHandler;

    iget v6, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenWidth:I

    iget v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->startY:F

    float-to-int v7, v2

    iget v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenWidth:I

    iget v8, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenHeight:I

    if-le v2, v8, :cond_b

    move v2, v3

    :goto_2
    invoke-static {v0, v6, v4, v7, v2}, Lcom/zeusis/appsnapshot/util/ScreenShootUtil;->getScreenShootPic(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v5, v2, v4, v3, v4}, Lcom/zeusis/appsnapshot/util/PicComposeHandler;->addPic2ComposeList(Landroid/graphics/Bitmap;IZZ)V

    .line 282
    new-instance v2, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$3;

    invoke-direct {v2, p0}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$3;-><init>(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 224
    return-void

    :cond_9
    move v2, v4

    .line 251
    goto/16 :goto_0

    .line 256
    .local v0, "bt":Landroid/graphics/Bitmap;
    :cond_a
    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenShootAdapter:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScreenShootAdapter;

    if-eqz v2, :cond_4

    .line 257
    iget-object v2, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenShootAdapter:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScreenShootAdapter;

    invoke-interface {v2}, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScreenShootAdapter;->getScreenShootPic()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bt":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .end local v0    # "bt":Landroid/graphics/Bitmap;
    :cond_b
    move v2, v4

    .line 280
    goto :goto_2
.end method

.method public setScreenShootAdapter(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScreenShootAdapter;)V
    .locals 0
    .param p1, "screenShootAdapter"    # Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScreenShootAdapter;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->screenShootAdapter:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScreenShootAdapter;

    .line 219
    return-void
.end method

.method public setScrollShootListener(Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;)V
    .locals 0
    .param p1, "scrollShootListener"    # Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/zeusis/appsnapshot/util/AppSnapshotImpl;->scrollShootListener:Lcom/zeusis/appsnapshot/util/AppSnapshotImpl$ScrollShootListener;

    .line 215
    return-void
.end method
