.class Landroid/widget/PressGestureDetector$TextBoom$3;
.super Ljava/lang/Object;
.source "PressGestureDetector.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PressGestureDetector$TextBoom;->startCircleAnimation()V
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
    .line 404
    iput-object p1, p0, Landroid/widget/PressGestureDetector$TextBoom$3;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 419
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const v2, 0x3ecccccd    # 0.4f

    .line 411
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$3;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get0(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$3;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get0(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 413
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$3;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    invoke-static {v0}, Landroid/widget/PressGestureDetector$TextBoom;->-get0(Landroid/widget/PressGestureDetector$TextBoom;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 415
    iget-object v0, p0, Landroid/widget/PressGestureDetector$TextBoom$3;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v1, p0, Landroid/widget/PressGestureDetector$TextBoom$3;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v1, v1, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v1}, Landroid/widget/PressGestureDetector;->-get2(Landroid/widget/PressGestureDetector;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/PressGestureDetector$TextBoom$3;->this$1:Landroid/widget/PressGestureDetector$TextBoom;

    iget-object v2, v2, Landroid/widget/PressGestureDetector$TextBoom;->this$0:Landroid/widget/PressGestureDetector;

    invoke-static {v2}, Landroid/widget/PressGestureDetector;->-get3(Landroid/widget/PressGestureDetector;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/widget/PressGestureDetector$TextBoom;->-wrap1(Landroid/widget/PressGestureDetector$TextBoom;II)V

    .line 410
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 423
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 406
    return-void
.end method
