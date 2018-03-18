.class Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RadioButtonDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/radio/RadioButtonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;


# direct methods
.method private constructor <init>(Lcom/zeusis/widget/radio/RadioButtonDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/radio/RadioButtonDrawable;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zeusis/widget/radio/RadioButtonDrawable;Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/radio/RadioButtonDrawable;

    .prologue
    invoke-direct {p0, p1}, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;-><init>(Lcom/zeusis/widget/radio/RadioButtonDrawable;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 159
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-set4(Lcom/zeusis/widget/radio/RadioButtonDrawable;Z)Z

    .line 160
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 156
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 167
    iget-object v0, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-set4(Lcom/zeusis/widget/radio/RadioButtonDrawable;Z)Z

    .line 164
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 173
    iget-object v4, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    const-string/jumbo v3, "UnCheckRadius"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4, v3}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-set6(Lcom/zeusis/widget/radio/RadioButtonDrawable;F)F

    .line 174
    iget-object v4, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    const-string/jumbo v3, "UnCheckStrokeSize"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4, v3}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-set8(Lcom/zeusis/widget/radio/RadioButtonDrawable;F)F

    .line 175
    const-string/jumbo v3, "UnCheckStrokeColorAlpha"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 176
    .local v2, "unCheckStrokeColorAlpha":I
    iget-object v4, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    const-string/jumbo v3, "UnCheckKenelColor"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-set5(Lcom/zeusis/widget/radio/RadioButtonDrawable;I)I

    .line 178
    iget-object v4, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    const-string/jumbo v3, "CheckRadius"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4, v3}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-set3(Lcom/zeusis/widget/radio/RadioButtonDrawable;F)F

    .line 179
    iget-object v4, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    const-string/jumbo v3, "CheckKenelRadius"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4, v3}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-set2(Lcom/zeusis/widget/radio/RadioButtonDrawable;F)F

    .line 180
    const-string/jumbo v3, "CheckColorAlpha"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 181
    .local v0, "checkColorAlpha":I
    const-string/jumbo v3, "CheckKenelColorAlpha"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 183
    .local v1, "checkKenelColorAlpha":I
    iget-object v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    iget-object v4, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    invoke-static {v4}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-get2(Lcom/zeusis/widget/radio/RadioButtonDrawable;)I

    move-result v4

    int-to-float v5, v2

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->getColor(IF)I

    move-result v4

    invoke-static {v3, v4}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-set7(Lcom/zeusis/widget/radio/RadioButtonDrawable;I)I

    .line 184
    iget-object v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    iget-object v4, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    invoke-static {v4}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-get0(Lcom/zeusis/widget/radio/RadioButtonDrawable;)I

    move-result v4

    int-to-float v5, v0

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->getColor(IF)I

    move-result v4

    invoke-static {v3, v4}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-set0(Lcom/zeusis/widget/radio/RadioButtonDrawable;I)I

    .line 185
    iget-object v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    iget-object v4, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    invoke-static {v4}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-get1(Lcom/zeusis/widget/radio/RadioButtonDrawable;)I

    move-result v4

    int-to-float v5, v1

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->getColor(IF)I

    move-result v4

    invoke-static {v3, v4}, Lcom/zeusis/widget/radio/RadioButtonDrawable;->-set1(Lcom/zeusis/widget/radio/RadioButtonDrawable;I)I

    .line 187
    iget-object v3, p0, Lcom/zeusis/widget/radio/RadioButtonDrawable$RadioAnimator;->this$0:Lcom/zeusis/widget/radio/RadioButtonDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 171
    return-void
.end method
