.class Landroid/widget/PressGestureDetector$TextBoom$4;
.super Ljava/lang/Object;
.source "PressGestureDetector.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PressGestureDetector$TextBoom;->stopTextBoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/PressGestureDetector$TextBoom;


# direct methods
.method constructor <init>(Landroid/widget/PressGestureDetector$TextBoom;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/PressGestureDetector$TextBoom;

    .prologue
    .line 442
    iput-object p1, p0, Landroid/widget/PressGestureDetector$TextBoom$4;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 456
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$4;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get1(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 455
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 449
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$4;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get1(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$4;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get1(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 451
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$4;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get1(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 448
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 460
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 444
    return-void
.end method
