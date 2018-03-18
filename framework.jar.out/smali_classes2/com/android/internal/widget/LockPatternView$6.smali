.class Lcom/android/internal/widget/LockPatternView$6;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternView;->rotateRect1([[Lcom/android/internal/widget/LockPatternView$CellState;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;

.field final synthetic val$column:I

.field final synthetic val$mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

.field final synthetic val$row:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternView;[[Lcom/android/internal/widget/LockPatternView$CellState;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/LockPatternView;
    .param p2, "val$mCellStates"    # [[Lcom/android/internal/widget/LockPatternView$CellState;
    .param p3, "val$row"    # I
    .param p4, "val$column"    # I

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$6;->this$0:Lcom/android/internal/widget/LockPatternView;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$6;->val$mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iput p3, p0, Lcom/android/internal/widget/LockPatternView$6;->val$row:I

    iput p4, p0, Lcom/android/internal/widget/LockPatternView$6;->val$column:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$6;->val$mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$6;->val$row:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$6;->val$column:I

    aget-object v1, v0, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView$CellState;->degrees:I

    .line 797
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$6;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 795
    return-void
.end method
