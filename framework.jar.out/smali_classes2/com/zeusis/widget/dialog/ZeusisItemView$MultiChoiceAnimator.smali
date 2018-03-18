.class Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZeusisItemView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/dialog/ZeusisItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiChoiceAnimator"
.end annotation


# instance fields
.field private mShow:Z

.field final synthetic this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;


# direct methods
.method public constructor <init>(Lcom/zeusis/widget/dialog/ZeusisItemView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/dialog/ZeusisItemView;
    .param p2, "show"    # Z

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1316
    iput-boolean p2, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->mShow:Z

    .line 1315
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x8

    .line 1321
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1323
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->mShow:Z

    if-nez v0, :cond_2

    .line 1324
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-get1(Lcom/zeusis/widget/dialog/ZeusisItemView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1330
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-get0(Lcom/zeusis/widget/dialog/ZeusisItemView;)S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1331
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-set0(Lcom/zeusis/widget/dialog/ZeusisItemView;S)S

    .line 1320
    :cond_1
    :goto_1
    return-void

    .line 1326
    :cond_2
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-get2(Lcom/zeusis/widget/dialog/ZeusisItemView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-get2(Lcom/zeusis/widget/dialog/ZeusisItemView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1332
    :cond_3
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-get0(Lcom/zeusis/widget/dialog/ZeusisItemView;)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-set0(Lcom/zeusis/widget/dialog/ZeusisItemView;S)S

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 1339
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 1340
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-get1(Lcom/zeusis/widget/dialog/ZeusisItemView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1341
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-get2(Lcom/zeusis/widget/dialog/ZeusisItemView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-static {v0}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-get2(Lcom/zeusis/widget/dialog/ZeusisItemView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1338
    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1348
    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-set1(Lcom/zeusis/widget/dialog/ZeusisItemView;I)I

    .line 1349
    const-string/jumbo v1, "alpha"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1350
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-get1(Lcom/zeusis/widget/dialog/ZeusisItemView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1351
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-get2(Lcom/zeusis/widget/dialog/ZeusisItemView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1352
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/ZeusisItemView;->-get2(Lcom/zeusis/widget/dialog/ZeusisItemView;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1354
    :cond_0
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisItemView$MultiChoiceAnimator;->this$0:Lcom/zeusis/widget/dialog/ZeusisItemView;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1347
    return-void
.end method
