.class public Lcom/android/server/wm/WindowLayersController;
.super Ljava/lang/Object;
.source "WindowLayersController.java"


# instance fields
.field private mDockAffectedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDockDivider:Lcom/android/server/wm/WindowState;

.field private mDockedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHighestApplicationLayer:I

.field private mHomeWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodAnimLayerAdjustment:I

.field private mInputMethodWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mMosaicWindow:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mReplacingWindows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mResizedLayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 66
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFloatedWindows:Ljava/util/ArrayDeque;

    .line 67
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    .line 68
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mHomeWindows:Ljava/util/ArrayDeque;

    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 72
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    .line 73
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mMosaicWindow:Ljava/util/ArrayDeque;

    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockAffectedWindows:Ljava/util/ArrayDeque;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 61
    return-void
.end method

.method private adjustSpecialWindows()V
    .locals 5

    .prologue
    .line 238
    iget v2, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    add-int/lit8 v0, v2, 0x5

    .line 240
    .local v0, "layer":I
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/wm/WindowLayersController$1;

    invoke-direct {v3, p0}, Lcom/android/server/wm/WindowLayersController$1;-><init>(Lcom/android/server/wm/WindowLayersController;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 250
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 254
    iget-object v3, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 253
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    goto :goto_0

    .line 257
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockAffectedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockAffectedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 259
    iget-object v3, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 258
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    goto :goto_1

    .line 262
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mHomeWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mHomeWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 264
    iget-object v3, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 263
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    goto :goto_2

    .line 268
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mMosaicWindow:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 271
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mMosaicWindow:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowLayersController;->getResizeDimLayer()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    goto :goto_3

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 279
    :cond_4
    :goto_4
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 280
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 282
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget v2, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v0, v2, :cond_4

    .line 283
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_4

    .line 291
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_5
    :goto_5
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 292
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_5

    .line 295
    :cond_6
    :goto_6
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mFloatedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 296
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mFloatedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_6

    .line 299
    :cond_7
    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 300
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowLayersController;->assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    goto :goto_7

    .line 237
    :cond_8
    return-void
.end method

.method private assignAndIncreaseLayerIfNeeded(Lcom/android/server/wm/WindowState;I)I
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "layer"    # I

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    .line 308
    add-int/lit8 p2, p2, 0x5

    .line 310
    :cond_0
    return p2
.end method

.method private assignAnimLayer(Lcom/android/server/wm/WindowState;I)V
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "layer"    # I

    .prologue
    .line 314
    iput p2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 315
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAnimLayerAdjustment()I

    move-result v2

    add-int/2addr v1, v2

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowLayersController;->getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I

    move-result v2

    .line 315
    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 317
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v0, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v0, :cond_0

    .line 318
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v1, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-le v0, v1, :cond_0

    .line 319
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v1, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    .line 313
    :cond_0
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mFloatedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mMosaicWindow:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    return-void
.end method

.method private collectSpecialWindows(Lcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 191
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f2

    if-ne v2, v3, :cond_0

    .line 192
    iput-object p1, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    .line 193
    return-void

    .line 195
    :cond_0
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x9c4

    if-ne v2, v3, :cond_1

    .line 196
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mMosaicWindow:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 197
    return-void

    .line 200
    :cond_1
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v2, :cond_2

    .line 201
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mReplacingWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_2
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v2, :cond_3

    .line 204
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 205
    return-void

    .line 207
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 208
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_4

    .line 209
    return-void

    .line 211
    :cond_4
    iget v2, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 212
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mPinnedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 213
    return-void

    .line 214
    :cond_5
    iget v2, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 215
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    return-void

    .line 218
    :cond_6
    iget v2, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 219
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mFloatedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 220
    return-void

    .line 223
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 224
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 225
    .local v1, "task":Lcom/android/server/wm/Task;
    iget v2, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v2, :cond_9

    .line 226
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 227
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mHomeWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_8
    :goto_0
    return-void

    .line 230
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    :cond_9
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRawFullscreen()Z

    move-result v2

    if-nez v2, :cond_8

    .line 231
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mDockAffectedWindows:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v2, p0, Lcom/android/server/wm/WindowLayersController;->mResizedLayers:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private logDebugLayers(Lcom/android/server/wm/WindowList;)V
    .locals 8
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 169
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 170
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 171
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const-string/jumbo v5, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Assign layer "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "mBase="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    const-string/jumbo v6, " mLayer="

    .line 171
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    iget v6, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 171
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 172
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v4, :cond_0

    .line 173
    const-string/jumbo v4, ""

    .line 171
    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 174
    const-string/jumbo v6, " =mAnimLayer="

    .line 171
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 174
    iget v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 171
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " mAppLayer="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v7, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v7, v7, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 167
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    return-void
.end method


# virtual methods
.method final assignLayersLocked(Lcom/android/server/wm/WindowList;)V
    .locals 10
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->clear()V

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "curBaseLayer":I
    const/4 v2, 0x0

    .line 84
    .local v2, "curLayer":I
    const/4 v0, 0x0

    .line 85
    .local v0, "anyLayerChanged":Z
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    .local v7, "windowCount":I
    :goto_0
    if-ge v3, v7, :cond_6

    .line 86
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 87
    .local v6, "w":Lcom/android/server/wm/WindowState;
    const/4 v4, 0x0

    .line 89
    .local v4, "layerChanged":Z
    iget v5, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 90
    .local v5, "oldLayer":I
    iget v8, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-eq v8, v1, :cond_0

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_0

    if-lez v3, :cond_5

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v8, :cond_5

    .line 91
    :cond_0
    add-int/lit8 v2, v2, 0x5

    .line 95
    :goto_1
    invoke-direct {p0, v6, v2}, Lcom/android/server/wm/WindowLayersController;->assignAnimLayer(Lcom/android/server/wm/WindowState;I)V

    .line 100
    iget v8, v6, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ne v8, v5, :cond_1

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-eq v8, v5, :cond_2

    .line 101
    :cond_1
    const/4 v4, 0x1

    .line 102
    const/4 v0, 0x1

    .line 105
    :cond_2
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_3

    .line 106
    iget v8, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 107
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 106
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/server/wm/WindowLayersController;->mHighestApplicationLayer:I

    .line 109
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowLayersController;->collectSpecialWindows(Lcom/android/server/wm/WindowState;)V

    .line 111
    if-eqz v4, :cond_4

    .line 112
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->scheduleAnimationIfDimming()V

    .line 85
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_5
    iget v2, v6, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move v1, v2

    goto :goto_1

    .line 115
    .end local v4    # "layerChanged":Z
    .end local v5    # "oldLayer":I
    .end local v6    # "w":Lcom/android/server/wm/WindowState;
    :cond_6
    invoke-direct {p0}, Lcom/android/server/wm/WindowLayersController;->adjustSpecialWindows()V

    .line 119
    iget-object v8, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v8, :cond_7

    if-eqz v0, :cond_7

    .line 120
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_7

    .line 121
    iget-object v8, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v8}, Lcom/android/server/wm/AccessibilityController;->onWindowLayersChangedLocked()V

    .line 77
    :cond_7
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 324
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    const-string/jumbo v0, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 328
    const-string/jumbo v0, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 323
    :cond_1
    return-void
.end method

.method getResizeDimLayer()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mDockDivider:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getSpecialWindowAnimLayerAdjustment(Lcom/android/server/wm/WindowState;)I
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 151
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_0

    .line 152
    iget v0, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    return v0

    .line 153
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getAnimLayerAdjustment()I

    move-result v0

    return v0

    .line 156
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .locals 6
    .param p1, "adj"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/android/server/wm/WindowLayersController;->mInputMethodAnimLayerAdjustment:I

    .line 130
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 131
    .local v3, "imw":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_0

    .line 132
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 135
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 136
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 137
    .local v0, "childWindow":Lcom/android/server/wm/WindowState;
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 135
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 142
    .end local v0    # "childWindow":Lcom/android/server/wm/WindowState;
    .end local v2    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 143
    iget-object v4, p0, Lcom/android/server/wm/WindowLayersController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 144
    .local v1, "dialog":Lcom/android/server/wm/WindowState;
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 142
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 127
    .end local v1    # "dialog":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method
