.class public Landroid/view/KeyEvent$DispatcherState;
.super Ljava/lang/Object;
.source "KeyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatcherState"
.end annotation


# instance fields
.field mActiveLongPresses:Landroid/util/SparseIntArray;

.field mDownKeyCode:I

.field mDownTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2759
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    .line 2756
    return-void
.end method


# virtual methods
.method public handleUpEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 2827
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2829
    .local v1, "keyCode":I
    iget-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 2830
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2832
    invoke-static {p1}, Landroid/view/KeyEvent;->-get0(Landroid/view/KeyEvent;)I

    move-result v2

    or-int/lit16 v2, v2, 0x120

    invoke-static {p1, v2}, Landroid/view/KeyEvent;->-set0(Landroid/view/KeyEvent;I)I

    .line 2833
    iget-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2835
    :cond_0
    iget v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    if-ne v2, v1, :cond_1

    .line 2837
    invoke-static {p1}, Landroid/view/KeyEvent;->-get0(Landroid/view/KeyEvent;)I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-static {p1, v2}, Landroid/view/KeyEvent;->-set0(Landroid/view/KeyEvent;I)I

    .line 2838
    iput v3, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 2839
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 2826
    :cond_1
    return-void
.end method

.method public isTracking(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2807
    iget v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performedLongPress(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2817
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2816
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 2766
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 2767
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 2768
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mActiveLongPresses:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2764
    return-void
.end method

.method public reset(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 2775
    iget-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 2777
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 2778
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 2774
    :cond_0
    return-void
.end method

.method public startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "target"    # Ljava/lang/Object;

    .prologue
    .line 2793
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2795
    const-string/jumbo v1, "Can only start tracking on a down event"

    .line 2794
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2798
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent$DispatcherState;->mDownKeyCode:I

    .line 2799
    iput-object p2, p0, Landroid/view/KeyEvent$DispatcherState;->mDownTarget:Ljava/lang/Object;

    .line 2792
    return-void
.end method