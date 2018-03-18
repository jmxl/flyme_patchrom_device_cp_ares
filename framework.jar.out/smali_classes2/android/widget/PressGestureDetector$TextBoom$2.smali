.class Landroid/widget/PressGestureDetector$TextBoom$2;
.super Ljava/lang/Object;
.source "PressGestureDetector.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PressGestureDetector$TextBoom;->startLoopAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$1:Landroid/widget/PressGestureDetector$TextBoom;


# direct methods
.method constructor <init>(Landroid/widget/PressGestureDetector$TextBoom;)V
    .locals 1
    .param p1, "this$1"    # Landroid/widget/PressGestureDetector$TextBoom;

    .prologue
    .line 356
    iput-object p1, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->mIsCanceled:Z

    .line 356
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->mIsCanceled:Z

    .line 379
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 366
    iget-boolean v0, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->mIsCanceled:Z

    if-eqz v0, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get1(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v1, v1, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v1}, Landroid/widget/PressGestureDetector;->-get2(Landroid/widget/PressGestureDetector;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v2, v2, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v2}, Landroid/widget/PressGestureDetector;->-get3(Landroid/widget/PressGestureDetector;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/widget/PressGestureDetector$TextBoom;->-wrap1(Landroid/widget/PressGestureDetector$TextBoom;II)V

    .line 371
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get0(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 372
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get0(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get0(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v1, v1, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v1}, Landroid/widget/PressGestureDetector;->-get2(Landroid/widget/PressGestureDetector;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v2}, Landroid/widget/PressGestureDetector$TextBoom;->-get0(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 374
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get0(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v1, v1, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v1}, Landroid/widget/PressGestureDetector;->-get3(Landroid/widget/PressGestureDetector;)F

    move-result v1

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v2}, Landroid/widget/PressGestureDetector$TextBoom;->-get0(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 375
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-wrap0(Landroid/widget/PressGestureDetector$TextBoom;)V

    .line 365
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 384
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PressGestureDetector$TextBoom$2;->mIsCanceled:Z

    .line 360
    return-void
.end method
